package com.shishuo.cms.service;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.shishuo.cms.dao.HeadlineDao;
import com.shishuo.cms.entity.Headline;
import com.shishuo.cms.entity.vo.HeadlineVo;
import com.shishuo.cms.exception.UploadException;
import com.shishuo.cms.util.MediaUtils;

@Service
public class HeadlineService {

	@Autowired
	private HeadlineDao headlineDao;

	@Autowired
	private ConfigService configService;

	public Headline addHeadline(MultipartFile multipartFile, String name,
			String url,String description) throws UploadException, IOException {
		Headline headline = new Headline();
		String pictureName = multipartFile.getOriginalFilename();
		String pictureType = "";
		if(pictureName.indexOf("_")>0){
			pictureType = pictureName.substring(0,pictureName.indexOf("_"));
		}
		String picture = "";
		if("pc".equals(pictureType)){
			picture = MediaUtils.saveImage(multipartFile,
					configService.getIntKey("shishuo_headline_image_width_pc"),
					configService.getIntKey("shishuo_headline_image_height_pc"));
		}else if("ipad".equals(pictureType)){
			picture = MediaUtils.saveImage(multipartFile,
					configService.getIntKey("shishuo_headline_image_width_ipad"),
					configService.getIntKey("shishuo_headline_image_height_ipad"));
		}else if("hons".equals(pictureType)){
			picture = MediaUtils.saveImage(multipartFile,
					84,
					20);
		}else{
			picture = MediaUtils.saveImage(multipartFile,
					2560,
					260);
		}
		
		headline.setName(name);
		headline.setPicture(picture);
		headline.setUrl(url);
		headline.setSort(0);
		headline.setCreateTime(new Date());
		headline.setDescription(description);
		headline.setPictureType(pictureType);
		headlineDao.addHeadline(headline);
		return headline;
	}

	public List<HeadlineVo> getHeadlineList() {
		return headlineDao.getHeadlineList();
	}

	public int updateHeadlineById(long headlineId, String name,
			MultipartFile multipartFile, String url,String description) throws UploadException, IOException {
		String picture = this.getHeadlineById(headlineId).getPicture();
		String pictureType = this.getHeadlineById(headlineId).getPictureType();
		if (multipartFile != null && !multipartFile.isEmpty()) {
			String pictureName = multipartFile.getOriginalFilename();
			pictureType = pictureName.substring(0,pictureName.indexOf("_"));
			if("pc".equals(pictureType)){
				picture = MediaUtils.saveImage(multipartFile,
						configService.getIntKey("shishuo_headline_image_width_pc"),
						configService.getIntKey("shishuo_headline_image_height_pc"));
			}else if("ipad".equals(pictureType)){
				picture = MediaUtils.saveImage(multipartFile,
						configService.getIntKey("shishuo_headline_image_width_ipad"),
						configService.getIntKey("shishuo_headline_image_height_ipad"));
			}else if("hons".equals(pictureType)){
				picture = MediaUtils.saveImage(multipartFile,
						84,
						20);
			}else{
				picture = MediaUtils.saveImage(multipartFile,
						2560,
						260);
			}
		}
		return headlineDao.updateHeadlineById(headlineId, name, picture, url,description,pictureType);
	}

	public HeadlineVo getHeadlineById(long headlineId) {
		return headlineDao.getHeadlineById(headlineId);
	}

	public void deleteHeadline(long headlineId, String pictureUrl) {
		headlineDao.deleteHeadline(headlineId);
		MediaUtils.deleteFile(pictureUrl);
	}

	public void updateSortById(long headlineId, int sort) {
		headlineDao.updateSortById(headlineId, sort);
	}
}
