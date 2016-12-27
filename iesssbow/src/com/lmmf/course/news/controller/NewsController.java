package com.lmmf.course.news.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lmmf.course.entity.News;
import com.lmmf.course.news.service.NewsServiceImpl;
import com.lmmf.framework.Page;

@Controller
@RequestMapping("news")
public class NewsController {
	@Resource
	private NewsServiceImpl newsServiceImpl;
	
	@RequestMapping("add")
	public String add(News news){
		this.newsServiceImpl.addNews(news);
		return "redirect:news/list";
	}
	@RequestMapping(value = "edit",method = RequestMethod.GET)
	public String toEdit(@RequestParam("id_news") int id_news,HttpServletRequest request){
		News news = this.newsServiceImpl.getNews(id_news);
		request.setAttribute("news",news);
		request.setAttribute("action", "edit");
		return "news/form";
	}
	@RequestMapping(value="edit",method=RequestMethod.POST)
	public String edit(News news,HttpServletRequest request){
		this.newsServiceImpl.editNews(news);
		return "redirect:list";
	}
	@RequestMapping(value ="delete")
	public String delete(
			@RequestParam("id_news") int id_news,
			HttpServletRequest request){
			this.newsServiceImpl.dropNews(id_news);
			return "redirect:list";
	}
	@RequestMapping("list")
	public String list(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,5,null);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,5,new Object[]{searchParam});
		}			
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "news/list";
	}
}
