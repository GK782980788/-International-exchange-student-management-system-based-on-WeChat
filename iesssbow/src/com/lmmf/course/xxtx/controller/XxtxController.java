package com.lmmf.course.xxtx.controller;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lmmf.course.entity.Xxtx;
import com.lmmf.course.entity.Ynjd;
import com.lmmf.course.xxtx.service.XxtxServiceImpl;
import com.lmmf.framework.Page;

@Controller
@RequestMapping("xxtx")
public class XxtxController {
	@Resource
	private XxtxServiceImpl xxtxServiceImpl;
	@RequestMapping(value="add_qt",method = RequestMethod.POST)
	public String add_qt(Xxtx xxtx){
		try {
			xxtx.setName(new String(xxtx.getName().getBytes("iso-8859-1"),"utf-8"));
		}catch(UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		try {
			xxtx.setDianHua(new String(xxtx.getDianHua().getBytes("iso-8859-1"),"utf-8"));
		}catch(UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		try {
			xxtx.setDanWei(new String(xxtx.getDanWei().getBytes("iso-8859-1"),"utf-8"));
		}catch(UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		try {
			xxtx.setYouXiang(new String(xxtx.getYouXiang().getBytes("iso-8859-1"),"utf-8"));
		}catch(UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		this.xxtxServiceImpl.addXxtx(xxtx);
		return "xxtxsuccess";
	}
	
	@RequestMapping(value="add",method = RequestMethod.POST)
	public String add(Xxtx xxtx){
		try {
			xxtx.setName(new String(xxtx.getName().getBytes("iso-8859-1"),"utf-8"));
		}catch(UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		try {
			xxtx.setDianHua(new String(xxtx.getDianHua().getBytes("iso-8859-1"),"utf-8"));
		}catch(UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		try {
			xxtx.setDanWei(new String(xxtx.getDanWei().getBytes("iso-8859-1"),"utf-8"));
		}catch(UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		try {
			xxtx.setYouXiang(new String(xxtx.getYouXiang().getBytes("iso-8859-1"),"utf-8"));
		}catch(UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		this.xxtxServiceImpl.addXxtx(xxtx);
		return "redirect:list";
	}
	
	@RequestMapping(value = "edit",method = RequestMethod.GET)
	public String toEdit(@RequestParam("id_xxtx") int id_xxtx,HttpServletRequest request){
		Xxtx xxtx = this.xxtxServiceImpl.getXxtx(id_xxtx);
		HttpSession session = request.getSession();
		session.setAttribute("xxtx03",xxtx);
		session.setAttribute("action", "edit");
		return "formsXX";
	}
	@RequestMapping(value= "edit",method = RequestMethod.POST)
	public String edit(Xxtx xxtx,HttpServletRequest request){
		try {
			xxtx.setName(new String(xxtx.getName().getBytes("iso-8859-1"),"utf-8"));
		}catch(UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		try {
			xxtx.setDianHua(new String(xxtx.getDianHua().getBytes("iso-8859-1"),"utf-8"));
		}catch(UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		try {
			xxtx.setDanWei(new String(xxtx.getDanWei().getBytes("iso-8859-1"),"utf-8"));
		}catch(UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		try {
			xxtx.setYouXiang(new String(xxtx.getYouXiang().getBytes("iso-8859-1"),"utf-8"));
		}catch(UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		Xxtx xxtx03 = (Xxtx)session.getAttribute("xxtx03");
		xxtx.setId_xxtx(xxtx03.getId_xxtx());
		this.xxtxServiceImpl.editXxtx(xxtx);
		return "redirect:list";
	}
	@RequestMapping(value ="delete")
	public String delete(
			@RequestParam("id_xxtx") int id_xxtx,
			HttpServletRequest request){
			this.xxtxServiceImpl.dropXxtx(id_xxtx);
			return "redirect:list";
	}
	@RequestMapping(value="list")
	public String list(@RequestParam(name="pageNum",defaultValue="1")int pageNum,
			@RequestParam(name="searchParam",defaultValue="")String searchParam,
			HttpServletRequest request,
			Model model){
		Page<Xxtx> page;
		if(searchParam==null||"".equals(searchParam)){
			page=this.xxtxServiceImpl.listXxtx(pageNum,10,null);
		}else{
			page=this.xxtxServiceImpl.listXxtx(pageNum,10,new Object[]{searchParam});
		}			
		request.setAttribute("page",page);
		request.setAttribute("searchParam",searchParam);
		return "tableXX";
	}
}
