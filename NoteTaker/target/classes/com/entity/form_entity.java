package com.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name="NoteTakers")
public class form_entity 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	private int id;
	
	@Column(name="Title")
	private String notetitle;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNotetitle() {
		return notetitle;
	}
	public void setNotetitle(String notetitle) {
		this.notetitle = notetitle;
	}
	public String getContend() {
		return contend;
	}
	public void setContend(String contend) {
		this.contend = contend;
	}
	@Column(name="Context",length=50000)
	private String contend;
	
	@Column
	@Temporal(TemporalType.DATE)
	private Date date;
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
   
}
