/*
 *	Copyright © 2013 Changsha Shishuo Network Technology Co., Ltd. All rights reserved.
 *	长沙市师说网络科技有限公司 版权所有
 *	http://www.shishuo.com
 */

package com.shishuo.cms.tag;

import java.io.IOException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shishuo.cms.entity.Folder;
import com.shishuo.cms.exception.FolderNotFoundException;
import com.shishuo.cms.plugin.TagPlugin;
import com.shishuo.cms.service.FolderService;
import com.shishuo.cms.util.HttpUtils;
import com.shishuo.cms.util.PropertyUtils;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/**
 * folder标签
 * 
 * @author lqq
 * 
 */
@Service
public class FolderUrlTag extends TagPlugin {
	@Autowired
	private FolderService folderService;

	public void execute(Environment env, Map params, TemplateModel[] loopVars,
			TemplateDirectiveBody body) throws TemplateException, IOException {
		Integer folderId = Integer.parseInt(params.get("folderId").toString());
		String basePath = HttpUtils.getBasePath(request);
		try {
			Folder folder = folderService.getFolderById(folderId);
			if (Boolean.getBoolean(PropertyUtils.getValue("shishuo.static"))) {
				env.getOut().write(basePath + "/html/folder/" + folder.getEname() + ".html");
			} else {
				env.getOut().write(basePath + "/folder/" + folder.getEname() + ".htm?classifyId="+folderId);
			}
		} catch (FolderNotFoundException e) {
			e.printStackTrace();
		}
	}

}
