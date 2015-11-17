/*
 *	Copyright © 2013 Changsha Shishuo Network Technology Co., Ltd. All rights reserved.
 *	长沙市师说网络科技有限公司 版权所有
 *	http://www.shishuo.com
 */

package com.shishuo.cms.tag;

import static freemarker.template.ObjectWrapper.BEANS_WRAPPER;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shishuo.cms.entity.Article;
import com.shishuo.cms.entity.vo.ArticleVo;
import com.shishuo.cms.entity.vo.PageVo;
import com.shishuo.cms.exception.FolderNotFoundException;
import com.shishuo.cms.plugin.TagPlugin;
import com.shishuo.cms.service.ArticleService;
import com.shishuo.cms.service.FolderService;
import com.shishuo.cms.util.HtmlRegexUtils;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/**
 * @author Herbert
 * 
 */
@Service
public class ArticlePageTag extends TagPlugin {

	@Autowired
	private ArticleService articleService;

	@Autowired
	private FolderService folderService;

	public void execute(Environment env, Map params, TemplateModel[] loopVars,
			TemplateDirectiveBody body) throws TemplateException, IOException {
		// 获取页面的参数
		Integer folderId = Integer.parseInt(params.get("folderId").toString());
		Integer p = Integer.parseInt(params.get("p").toString());
		Integer rows = Integer.parseInt(params.get("rows").toString());
		// 获取文件的分页
		try {
			PageVo<ArticleVo> pageVo = articleService.getArticlePageByFolderId(
					folderId, p, rows);
			List<ArticleVo> articlelist = pageVo.getList();
			if(params.get("word_limit") != null){
				Integer word_limit = Integer.parseInt(params.get("word_limit").toString());
				String articleContent = "";
				String htmlContent = "";
				HtmlRegexUtils htmlRegexUtils = new HtmlRegexUtils();
				for(ArticleVo article : articlelist){
					articleContent = article.getContent();
					htmlContent = htmlRegexUtils.filterHtml(articleContent);
					if(htmlContent.length()>word_limit){
						htmlContent = htmlContent.substring(0,word_limit);
						htmlContent = htmlContent+"...";
					}
					article.setContent(htmlContent);
				}
			}
			env.setVariable("tag_article_page", BEANS_WRAPPER.wrap(pageVo));
		} catch (FolderNotFoundException e) {
			env.setVariable("tag_article_page", BEANS_WRAPPER.wrap(null));
		}

		body.render(env.getOut());
	}

}
