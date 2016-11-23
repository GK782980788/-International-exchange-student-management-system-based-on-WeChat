package com.lmmf.course.news.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lmmf.course.entity.News;
import com.lmmf.course.news.dao.NewsDaoImpl;
import com.lmmf.framework.Page;

@Service
@Transactional(readOnly=false)
public class NewsServiceImpl {
	@Resource
	private NewsDaoImpl newsDaoImpl;
	public void addNews(News news){
		this.newsDaoImpl.saveNews(news);
	}
	@Transactional(readOnly=true)
	public Page<News> listNews(int pageNum,int pageSize,Object[] params){
		return this.newsDaoImpl.findNews(pageNum, pageSize, params);
	}
	@Transactional(readOnly=true)
	public News getNews(int id_news){
		return this.newsDaoImpl.getNews(id_news);
	}	
	public void editNews(News news){
		System.out.println("get id_news()"+news.getId_news());
		News news02 = this.newsDaoImpl.getNews(news.getId_news());
		news02.setTime(news.getTime());
		news02.setBiaoTi(news.getBiaoTi());
		news02.setNeiRongURL(news.getNeiRongURL());
		news02.setIsFaBu(news.getIsFaBu());
		news02.setIsChinese(news.getIsChinese());
		news02.setIsJapanese(news.getIsJapanese());
		news02.setIsIndonesians(news.getIsIndonesians());
		news02.setIsBrazilians(news.getIsBrazilians());
		news02.setType(news.getType());
		this.newsDaoImpl.updateNews(news02);
	}
	public void dropNews(int id_news){
		this.newsDaoImpl.deleteNews(id_news);
	}
}
