package com.lmmf.course.xxtx.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lmmf.course.entity.Xxtx;
import com.lmmf.course.xxtx.dao.XxtxDaoImpl;
import com.lmmf.framework.Page;

@Service
@Transactional(readOnly=false)
public class XxtxServiceImpl {
	@Resource
	private XxtxDaoImpl xxtxDaoImpl;
	public void addXxtx(Xxtx xxtx){
		this.xxtxDaoImpl.saveXxtx(xxtx);
	}
	@Transactional(readOnly=true)
	public Page<Xxtx> listXxtx(int pageNum,int pageSize,Object[] params){		
			return this.xxtxDaoImpl.findXxtx(pageNum, pageSize, params);
	}
	@Transactional(readOnly=true)
	public Xxtx getXxtx(int id_xxtx){
		return this.xxtxDaoImpl.getXxtx(id_xxtx);
	}	
	public void editXxtx(Xxtx xxtx){
		Xxtx xxtx02 = this.xxtxDaoImpl.getXxtx(xxtx.getId_xxtx());
		xxtx02.setName(xxtx.getName());
		xxtx02.setDianHua(xxtx.getDianHua());
		xxtx02.setYouXiang(xxtx.getYouXiang());
		xxtx02.setDanWei(xxtx.getDanWei());
		this.xxtxDaoImpl.updateXxtx(xxtx02);
	}
	public void dropXxtx(int id_xxtx){
		this.xxtxDaoImpl.deleteXxtx(id_xxtx);
	}
}
