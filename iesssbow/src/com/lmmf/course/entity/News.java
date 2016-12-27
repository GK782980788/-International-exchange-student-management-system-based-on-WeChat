package com.lmmf.course.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 由郭可完成
 * 实现新闻页和消息页的功能
 * 需要有增删改查
 */

//@Entity
//@Table(name="news")
public class News {
	
	Integer id_news;
	Date time;
	String biaoTi;
	String neiRongURL;
	Boolean isFaBu;
	Boolean isChinese;
	Boolean isJapanese;
	Boolean IsIndonesians;
	Boolean IsBrazilians;
	String  type;
	
	public Integer getId_news() {
		return id_news;
	}
	public void setId_news(Integer id_news) {
		this.id_news = id_news;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getBiaoTi() {
		return biaoTi;
	}
	public void setBiaoTi(String biaoTi) {
		this.biaoTi = biaoTi;
	}
	public String getNeiRongURL() {
		return neiRongURL;
	}
	public void setNeiRongURL(String neiRongURL) {
		this.neiRongURL = neiRongURL;
	}
	public Boolean getIsFaBu() {
		return isFaBu;
	}
	public void setIsFaBu(Boolean isFaBu) {
		this.isFaBu = isFaBu;
	}
	public Boolean getIsChinese() {
		return isChinese;
	}
	public void setIsChinese(Boolean isChinese) {
		this.isChinese = isChinese;
	}
	public Boolean getIsJapanese() {
		return isJapanese;
	}
	public void setIsJapanese(Boolean isJapanese) {
		this.isJapanese = isJapanese;
	}
	public Boolean getIsIndonesians() {
		return IsIndonesians;
	}
	public void setIsIndonesians(Boolean isIndonesians) {
		IsIndonesians = isIndonesians;
	}
	public Boolean getIsBrazilians() {
		return IsBrazilians;
	}
	public void setIsBrazilians(Boolean isBrazilians) {
		IsBrazilians = isBrazilians;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
