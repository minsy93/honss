/*
 *	Copyright © 2013 Changsha Shishuo Network Technology Co., Ltd. All rights reserved.
 *	长沙市师说网络科技有限公司 版权所有
 *	http://www.shishuo.com
 */

package com.shishuo.cms.action;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shishuo.cms.exception.TemplateNotFoundException;
import com.shishuo.cms.util.BrowserName;

/**
 * 首页
 * 
 * @author Herbert
 */
@Controller
public class IndexAction extends BaseAction {

	/**
	 * 首页
	 * 
	 * @param pageNum
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String defalut(
			@RequestParam(value = "p", defaultValue = "1") long p,
			ModelMap modelMap,HttpServletRequest request) {
		return home(p, modelMap,request);
	}

	/**
	 * 首页
	 * 
	 * @param pageNum
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/index.htm", method = RequestMethod.GET)
	public String home(@RequestParam(value = "p", defaultValue = "1") long p,
			ModelMap modelMap,HttpServletRequest request) {
		try {
			String agent=request.getHeader("User-Agent").toLowerCase();
            String browerType = BrowserName.getBrowserName(agent);
            if(!"ie11".equals(browerType)&&!"ie10".equals(browerType)&&!"ie9".equals(browerType)&&!"ie8".equals(browerType)&&!"ie7".equals(browerType)&&!"ie".equals(browerType)){
            	modelMap.addAttribute("browerJs","menu-js");
            }else{
            	modelMap.addAttribute("browerJs","js");
            }
            if("ie8".equals(browerType)){
            	modelMap.addAttribute("browerCss","ie-css");
            }else{
            	modelMap.addAttribute("browerCss","css");
            }
			modelMap.addAttribute("browerType",browerType);
            modelMap.addAttribute("p", p);
			modelMap.addAttribute("g_folderId", 0);
			return themeService.getDefaultTemplate();
		} catch (TemplateNotFoundException e) {
			modelMap.addAttribute("g_folderId", 0);
			logger.fatal(e.getMessage());
			return themeService.get404();
		}
	}

	/**
	 * 404
	 * 
	 * @return
	 */
	@RequestMapping(value = "/404.htm", method = RequestMethod.GET)
	public String pageNotFound(ModelMap modelMap) {
		modelMap.addAttribute("g_folderId", 0);
		return themeService.get404();
	}

	/**
	 * 500
	 * 
	 * @return
	 */
	@RequestMapping(value = "/500.htm", method = RequestMethod.GET)
	public String error(ModelMap modelMap) {
		modelMap.addAttribute("g_folderId", 0);
		return themeService.get500();
	}
}
