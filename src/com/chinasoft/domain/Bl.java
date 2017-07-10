package com.chinasoft.domain;

import java.io.Serializable;
/**
 * 玻璃实体
 * @author 赵一好
 *
 */
public class Bl implements Serializable{

	private Integer id;
	private String num; //编号(不能为空，不能重复)
	private String mc;	//名称(不能为空，可以重复）白玻、绿波、花玻
	private String hd;	//厚度(可以为空,可以重复)4mm、5mm
	private String zl;	//质量（可以为空，可以重复）一等品、合格、协议
	private String cd;	//长度（不能为空，可以重复）
	private String kd;	//宽度（不能为空，可以重复）
	private Integer sl;	//数量（不能为空，可以重复）
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMc() {
		return mc;
	}
	public void setMc(String mc) {
		this.mc = mc;
	}
	public String getHd() {
		return hd;
	}
	public void setHd(String hd) {
		this.hd = hd;
	}
	public String getZl() {
		return zl;
	}
	public void setZl(String zl) {
		this.zl = zl;
	}
	public String getCd() {
		return cd;
	}
	public void setCd(String cd) {
		this.cd = cd;
	}
	public String getKd() {
		return kd;
	}
	public void setKd(String kd) {
		this.kd = kd;
	}
	public Integer getSl() {
		return sl;
	}
	public void setSl(Integer sl) {
		this.sl = sl;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	
}
