package com.lmmf.course.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * ��������д
 * ʵ�ֵ�¼����
 * ��ʱ����Ҫ��ɾ�Ĳ�
 */

@Entity
@Table(name="loginuser")
public class LoginUser {
	Integer id_LU;
	String userName;
	String password;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId_LU() {
		return id_LU;
	}
	public void setId_LU(Integer id_LU) {
		this.id_LU = id_LU;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
