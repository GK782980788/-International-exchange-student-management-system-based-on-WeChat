package com.lmmf.course.news.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	@RequestMapping(value="add",method = RequestMethod.POST)
	public String add(News news){
		System.out.println("�ѽ���news/add");
		news.setIsFaBu(true);
		try {
			String leiXing =news.getLeiXing();
			leiXing = new String(leiXing.getBytes("iso-8859-1"),"utf-8");
			news.setLeiXing(leiXing);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
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
		System.out.println("�ѽ���toEdit");
		News news = this.newsServiceImpl.getNews(id_news);
		HttpSession session = request.getSession();
		session.setAttribute("news03",news);
		session.setAttribute("action", "edit");
		return "formsXW";
	}
	@RequestMapping(value="edit",method = RequestMethod.POST)
	public String edit(News news,HttpServletRequest request){
		news.setIsFaBu(true);
		try {
			String leiXing =news.getLeiXing();
			leiXing = new String(leiXing.getBytes("iso-8859-1"),"utf-8");
			news.setLeiXing(leiXing);
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		try {
			news.setBiaoTi(new String(news.getBiaoTi().getBytes("iso-8859-1"),"utf-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		News news03 = (News)session.getAttribute("news03");
		news.setId_news(news03.getId_news());
		System.out.println(news03.getId_news()+"news.getId_news()");
		System.out.println(news03.getLeiXing()+"news.getLeiXing()");
		System.out.println(news03.getBiaoTi()+"news.getLeiXing()");
		this.newsServiceImpl.editNews(news);


		System.out.println(news.getId_news()+"news.getId_news()");
		System.out.println(news.getLeiXing()+"news.getLeiXing()");
		System.out.println(news.getBiaoTi()+"news.getBiaoTi()");
		
		if(news.getLeiXing().equals("����")){
			return "redirect:list_gg";			
		}
		if(news.getLeiXing().equals("�ȵ�")){
			return "redirect:list_rd";			
		}
		if(news.getLeiXing().equals("����")){
			return "redirect:list_gj";			
		}
		if(news.getLeiXing().equals("У��")){
			return "redirect:list_xn";			
		}
		System.out.println("δѡ����");
			return "formXW?action='edit'";
	}
	@RequestMapping(value ="delete_rd")
	public String delete_rd(
			@RequestParam("id_news") int id_news,
			HttpServletRequest request){
			this.newsServiceImpl.dropNews(id_news);
			return "redirect:list_rd";
	}
	@RequestMapping(value ="delete_xn")
	public String delete_xn(
			@RequestParam("id_news") int id_news,
			HttpServletRequest request){
			this.newsServiceImpl.dropNews(id_news);
			return "redirect:list_xn";
	}
	@RequestMapping(value ="delete_gg")
	public String delete_gg(
			@RequestParam("id_news") int id_news,
			HttpServletRequest request){
			this.newsServiceImpl.dropNews(id_news);
			return "redirect:list_gg";
	}
	@RequestMapping(value ="delete_gj")
	public String delete_gj(
			@RequestParam("id_news") int id_news,
			HttpServletRequest request){
			this.newsServiceImpl.dropNews(id_news);
			return "redirect:list_gj";
	}
	@RequestMapping(value="list_gg")
	public String list_gg(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"����");
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"����");
		}			
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableXWgg";
	}
	@RequestMapping("list_gj")
	public String list_gj(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"����");
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"����");
		}			
		List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableXWgj";
	}
	
	@RequestMapping(value="list_xn")
	public String list_xn(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"У��");
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"У��");
		}			
		List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableXWxn";
	}
	
	@RequestMapping("list_rd")
	public String list_rd(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			News news,
			Model model){
		Page<News> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.newsServiceImpl.listNews(pageNum,10,null,"�ȵ�");
		}else{
			page=this.newsServiceImpl.listNews(pageNum,10,new Object[]{searchParam},"�ȵ�");
		}			
		List<News>list = page.getList();
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableXWrd";
	}
}
