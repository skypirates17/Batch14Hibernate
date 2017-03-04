package com.batch.fourteen.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;

@Entity
@Table(name = "messages")
public class Message {

	@ManyToOne//(fetch = FetchType.LAZY)
	//@JoinColumn(name="useridfrom",referencedColumnName="userid",nullable=false)
	private User user;
	
	@Id
	@Column(name = "messageid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String messageId;
	
	@Column(name = "useridfrom")
	private Integer idFrom;
	
	@Column(name = "useridto")
	private Integer idTo;
	
	@Column(name = "message")
	private String message;
	
	@Max(5)
	@Column(name="deleteflag", length=5)
	private Integer deleteFlag;

	public String getMessageId() {
		return messageId;
	}

	public void setMessageId(String messageId) {
		this.messageId = messageId;
	}

	public Integer getIdFrom() {
		return idFrom;
	}

	public void setIdFrom(Integer idFrom) {
		this.idFrom = idFrom;
	}

	public Integer getIdTo() {
		return idTo;
	}

	public void setIdTo(Integer idTo) {
		this.idTo = idTo;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Integer getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}

	// private String picFileName;

	/*
	 * @Override public String toString() { StringBuilder sb = new StringBuilder();
	 * 
	 * sb.append("{id=" + this.id); sb.append(", name=" + this.name); sb.append(", picFileName=" + this.picFileName); sb.append(", message=" + this.message + "}");
	 * 
	 * return sb.toString(); }
	 */
}
