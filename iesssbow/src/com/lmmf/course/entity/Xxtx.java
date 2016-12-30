package com.lmmf.course.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * 由郭可完成
 * 需要有增删改查
 */

@Entity
@Table(name="xxtx")
public class Xxtx {
	Integer id_xxtx;
	String name;
	String danWei;
	String youXiang;
	String dianHua;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId_xxtx() {
		return id_xxtx;
	}
	public void setId_xxtx(Integer id_xxtx) {
		this.id_xxtx = id_xxtx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDanWei() {
		return danWei;
	}
	public void setDanWei(String danWei) {
		this.danWei = danWei;
	}
	public String getYouXiang() {
		return youXiang;
	}
	public void setYouXiang(String youXiang) {
		this.youXiang = youXiang;
	}
	public String getDianHua() {
		return dianHua;
	}
	public void setDianHua(String dianHua) {
		this.dianHua = dianHua;
	}
}
