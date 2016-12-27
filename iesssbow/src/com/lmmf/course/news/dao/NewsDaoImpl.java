package com.lmmf.course.news.dao;

import org.springframework.stereotype.Repository;

import com.lmmf.course.entity.News;
import com.lmmf.framework.BaseDao;
import com.lmmf.framework.Page;

@Repository
public class NewsDaoImpl extends BaseDao<News,Integer> {
	public void saveNews(News news){
		try{
			this.save(news);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public Page<News> findNews(int pageNum,int pageSize,Object[] params){
		String hql;
		if(params!=null&&params.length>0){
			hql="from News news where news.name like ?";
			params[0]="%" + params[0]+"%";
		}else{
			hql="from News";
		}
		try{
			Page<News> page = new Page<News>();
			page.setCurrentPageNum(pageNum);
			page.setPageSize(pageSize);
			page=this.findByPage(pageNum, pageSize, hql, params);
			return page;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	public News getNews(int id_news){
		try{
			News news = this.get(id_news);
			return news;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	public void updateNews(News news){
		try{
			this.update(news);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public void deleteNews(int id_news){
		try{
			this.delete(id_news);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
