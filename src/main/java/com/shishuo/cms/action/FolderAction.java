/*
 *	Copyright © 2013 Changsha Shishuo Network Technology Co., Ltd. All rights reserved.
 *	长沙市师说网络科技有限公司 版权所有
 *	http://www.shishuo.com
 */
package com.shishuo.cms.action;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shishuo.cms.entity.Folder;
import com.shishuo.cms.entity.vo.FolderVo;
import com.shishuo.cms.util.BrowserName;

/**
 * @author Herbert
 * 
 */
@Controller
@RequestMapping("/folder")
public class FolderAction extends BaseAction {

	/**
	 * 目录ID
	 * 
	 * @param ename
	 * @param pageNum
	 * @param modelMap
	 * @return
	 */
	@RequestMapping(value = "/{ename}.htm", method = RequestMethod.GET)
	public String folder(@PathVariable String ename,
			@RequestParam(value = "p", defaultValue = "1") long p,
			@RequestParam(value = "classifyId", defaultValue = "-1") long classifyId,
			@RequestParam(value = "seriesFolderId", defaultValue = "-1") long seriesFolderId,
			@RequestParam(value = "fatherId", defaultValue = "-1") long fatherId,
			@RequestParam(value = "articleId", defaultValue = "-1") long articleId,
			ModelMap modelMap,HttpServletRequest request) {
		try {
			String agent=request.getHeader("User-Agent").toLowerCase();
            String browerType = BrowserName.getBrowserName(agent);
            if("ie8".equals(browerType)||"ie7".equals(browerType)){
            	modelMap.addAttribute("browerCss","ie-css");
            }else{
            	modelMap.addAttribute("browerCss","css");
            }
            System.out.println("*******"+browerType);
            modelMap.addAttribute("browerType",browerType);
			if(articleId != -1){
				modelMap.put("articleId", articleId);
			}
			if(classifyId != -1){
				Folder classifyFolder = folderService.getFolderById(classifyId);
				modelMap.put("classifyFolder", classifyFolder);
			}
			if(seriesFolderId != -1){
				Folder seriesFolder = folderService.getFolderById(seriesFolderId);
				modelMap.put("seriesFolder", seriesFolder);
			}
			if(fatherId != -1){
				Folder fatherFolder = folderService.getFolderById(fatherId);
				modelMap.put("fatherFolder", fatherFolder);
			}
			Folder folder = folderService.getFolderByEname(ename);
			modelMap.put("folder", folder);
			FolderVo fatherFolder = folderService.getFolderById(folderService.firstFolderId(folder.getFolderId()));
			modelMap.put("g_folderId", fatherFolder.getFolderId());
			modelMap.put("p", p);
			return themeService.getFolderTemplate(folder.getFolderId());
		} catch (Exception e) {
			modelMap.addAttribute("g_folderId", 0);
			logger.fatal(e.getMessage());
			return themeService.get404();
		}
	}
}
