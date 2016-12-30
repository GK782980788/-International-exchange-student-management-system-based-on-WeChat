package com.lmmf.course.xxtx.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.lmmf.course.entity.Xxtx;
import com.lmmf.framework.BaseDao;
import com.lmmf.framework.Page;

@Repository
public class XxtxDaoImpl extends BaseDao<Xxtx,Integer> {
	
	@Resource
	private SessionFactory sessionFactory;
	
	
	public void saveXxtx(Xxtx xxtx){
		try{
			Session session = sessionFactory.getCurrentSession();
			session.save(xxtx);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public Page<Xxtx> editXxtx(int id_xxtx){
		String hql;
			hql="from Xxtx xxtx where xxtx.id_xxtx="+id_xxtx;	
		try{
			Page<Xxtx> page = new Page<Xxtx>();
			page.setCurrentPageNum(1);	
			page.setPageSize(5000);	
			page=this.findByPage(1,5000, hql,null);
			return page;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	public Page<Xxtx> findXxtx(int pageNum,int pageSize,Object[] params){
		String hql;
		if(params!=null&&params.length>0){
			hql="from Xxtx xxtx where xxtx.id_xxtx like ?";
			params[0]="%" + params[0]+"%";
		}else{			
				hql="from Xxtx xxtx order by xxtx.id_xxtx desc";
		}
		try{
			Page<Xxtx> page = new Page<Xxtx>();
			page.setCurrentPageNum(pageNum);	
			page.setPageSize(pageSize);	
			page=this.findByPage(pageNum, pageSize, hql, params);
			return page;
		}catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}
	
	public Xxtx getXxtx(int id_xxtx){
		try{
			Xxtx xxtx = this.get(id_xxtx);
			return xxtx;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	public void updateXxtx(Xxtx xxtx){
		try{
			this.update(xxtx);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public void deleteXxtx(int id_xxtx){
		try{
			this.delete(id_xxtx);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
