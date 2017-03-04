package com.batch.fourteen.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "users")
public class User {

	@Id
	@Column(name="userid", length=5)
	@Size(min=1,max=5)
	private String id;
	
	@NotNull
	@Max(120)
	@Column(name="userip", length=20,nullable = false)
	private String ip;

	@Max(50)
	@Column(name="userpc", length=50)
	private String pcName;
	
	@Max(50)
	@Column(name="username",nullable = false, length=50)
	@NotNull
	private String name;
	
	@Max(50)
	@Column(name="usernickname", length=50)
	private String nickName;
	
	@Max(50)
	@Column(name="useremail", length=50)
	private String email;
	
	@NotNull
	@Max(100)
	@Column(name="userpic",nullable = false, length=100)
	private String picFileName;
	
	@Max(5)
	@Column(name="deleteflag", length=5)
	private Integer deleteFlag;
	
	//@OneToMany(fetch = FetchType.LAZY,cascade=CascadeType.ALL, mappedBy = "users")
	@OneToMany(cascade=CascadeType.ALL)
    @JoinColumn(name="useridfrom")
	private List<Message> messages;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getPcName() {
		return pcName;
	}

	public void setPcName(String pcName) {
		this.pcName = pcName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPicFileName() {
		return picFileName;
	}

	public void setPicFileName(String picFileName) {
		this.picFileName = picFileName;
	}
	
	public Integer getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}


	public List<Message> getMessages() {
		return messages;
	}

	public void setMessages(List<Message> messages) {
		this.messages = messages;
	}

	/*
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();

		sb.append("{id=" + this.id);
		sb.append(", name=" + this.name);
		sb.append(", ip=" + this.ip);
		sb.append(", pcName=" + this.pcName);
		sb.append(", email=" + this.email);
		sb.append(", picFileName=" + this.picFileName);
		sb.append(", nickName=" + this.nickName);
		sb.append(", messages=" + this.messages.toString() + "}");

		return sb.toString();
	}
	*/
}
