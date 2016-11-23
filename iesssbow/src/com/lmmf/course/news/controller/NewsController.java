package com.lmmf.course.news.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

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
	public String add(@RequestParam(name="type") String type ,  News news){
		news.setIsFaBu(true);
		try {
			type = new String(type.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		news.setType(type);
		try {
			news.setBiaoTi(new String(news.getBiaoTi().getBytes("iso-8859-1"),"utf-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		this.newsServiceImpl.addNews(news);
		return "redirect:list_gg";
	}
	@RequestMapping(value = "edit",method = RequestMethod.GET)
	public String toEdit(@RequestParam("id_news") int id_news,HttpServletRequest request){
		System.out.println(id_news);
		News news = this.newsServiceImpl.getNews(id_news);
		request.setAttribute("news",news);
		request.setAttribute("action", "edit");
		return "formsXW";
	}
	@RequestMapping(value="edit",method = RequestMethod.POST)
	public String edit(News news,HttpServletRequest request){
		System.out.println("13245646546"+news.getId_news());
		this.newsServiceImpl.editNews(news);
		return "redirect:list_gg";
	}
	@RequestMapping(value ="delete")
	public String delete(
			@RequestParam("id_news") int id_news,
			HttpServletRequest request){
			this.newsServiceImpl.dropNews(id_news);
			return "redirect:list";
	}
	@RequestMapping("list_gg")
	public String list_gg(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
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
		return "tableXWgg";
	}
	@RequestMapping("list_gj")
	public String list_gj(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			System.out.println("kasldflasjflj");
			page=this.newsServiceImpl.listNews(pageNum,5,null);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,5,new Object[]{searchParam});
		}			
		List<News>list = page.getList();
		System.out.println("ddd");
		for(int i =0;i<list.size();i++){
			System.out.println("ddd");
			System.out.println(list.get(i).getTime());
		}
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableXWgj";
	}
	
	@RequestMapping("list_xn")
	public String list_xn(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			System.out.println("kasldflasjflj");
			page=this.newsServiceImpl.listNews(pageNum,5,null);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,5,new Object[]{searchParam});
		}			
		List<News>list = page.getList();
		System.out.println("ddd");
		for(int i =0;i<list.size();i++){
			System.out.println("ddd");
			System.out.println(list.get(i).getTime());
		}
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableXWxn";
	}
	
	@RequestMapping("list_rd")
	public String list_rd(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			System.out.println("kasldflasjflj");
			page=this.newsServiceImpl.listNews(pageNum,5,null);
		}else{
			page=this.newsServiceImpl.listNews(pageNum,5,new Object[]{searchParam});
		}			
		List<News>list = page.getList();
		System.out.println("ddd");
		for(int i =0;i<list.size();i++){
			System.out.println("ddd");
			System.out.println(list.get(i).getTime());
		}
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableXWrd";
	}
}
