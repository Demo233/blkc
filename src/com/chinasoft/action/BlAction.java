package com.chinasoft.action;

import java.util.List;

import javax.annotation.Resource;
import javax.resource.spi.CommException;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.chinasoft.domain.Bl;
import com.chinasoft.domain.User;
import com.chinasoft.service.BlService;
import com.chinasoft.utils.GenerateNumUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller("blAction")
@Scope("prototype")
public class BlAction extends ActionSupport {

	private Integer id; 
	private String num; // 编号
	private String mc; // 名称
	private String hd; // 厚度
	private String zl; // 质量
	private String kd; // 宽度
	private String cd; // 长度
	private Integer sl; // 数量

	@Resource(name = "blService")
	private BlService blService;

	public String blList() throws Exception {

		List<Bl> bls = blService.findAllBl();
		ActionContext.getContext().put("bls", bls);
		return "list";

	}

	// 保存按钮
	public String saveBut() throws Exception {
		num = GenerateNumUtils.createBlNum();
		ActionContext.getContext().put("num", num);
		return "saveBut";

	}

	// 保存
	public String save() throws Exception{
		num = GenerateNumUtils.createBlNum();
		ActionContext.getContext().put("num", num);
		// 必须填写编号、名称、长度、宽度
		if(num == null || num.trim().equals("")){
			this.addActionError("编号不能为空");
			return "saveBut";
		}
		if(mc == null || mc.trim().equals("")){
			this.addActionError("名称不能为空");
			return "saveBut";
		}
		if(cd == null || cd.trim().equals("")){
			this.addActionError("长度不能为空");
			return "saveBut";
		}
		if(kd == null || kd.trim().equals("")){
			this.addActionError("宽度不能为空");
			return "saveBut";
		}
		// 抛异常代表保存时，玻璃信息已存在，这个地方做的不太好，更好的办法使用自定义异常
		try{
			this.blService.save(num,mc,hd,zl,kd,cd,sl);
		}catch (Exception e) {
			e.printStackTrace();
			this.addActionError(e.getMessage());
			return "saveBut";
		}
		
		return "save";
	}
	
	// 条件查询(名称、厚度、质量、长度、宽度)
	public String sreach() throws Exception{
		
		List<Bl> bls = this.blService.sreach(mc,hd,zl,cd,kd);
		ActionContext.getContext().put("bls", bls);
		return "list";
		
	}
	
	// 删除
	public String delete() throws Exception{
		if(id != null && id > 0 ){
			this.blService.deleteBlById(id);
			return "save";
		}else{
			this.addActionError("删除失败，请重试");
			return "error";
		}
	}

	public String rkBut() throws Exception{
		return "rkview";
	}
	
	// 入库
	public String rk() throws Exception{
		try{
			if(sl == null){
				this.addActionError("数量不能为空");
				return "rkview";
			}
			if(id != null && id > 0){
				this.blService.rkById(id,sl);
				return "save";
			}else{
				this.addActionError("入库失败，请重试");
				return "error";
			}
		}catch (Exception e) {
			e.printStackTrace();
			this.addActionError(e.getMessage());
			return "rkview";
		}
		
	}
	
	public String ckBut() throws Exception{
		return "ckview";
	}
	
	// 出库
	public String ck() throws Exception{
		try{
			if(sl == null){
				this.addActionError("数量不能为空");
				return "ckview";
			}
			if(id != null && id > 0){
				this.blService.ckById(id,sl);
				return "save";
			}else{
				this.addActionError("入库失败，请重试");
				return "error";
			}
		}catch (Exception e) {
			e.printStackTrace();
			this.addActionError(e.getMessage());
			return "ckview";
		}
		
	}
	
	// 更新按钮
	public String updateBut() throws Exception{
		// 根据传过来的id查找bl，用于回显数据
		if(id != null && id > 0){
			Bl bl = this.blService.getById(id);
			ActionContext.getContext().put("bl", bl);
			
			// 查出所有的规格
			List<Bl> bls = this.blService.findAllZl();
			ActionContext.getContext().put("bls", bls);
			return "updateBut";
		}else{
			this.addActionError("更新异常,请重试");
			return "error";
		}
	}
	
	// 更新玻璃信息
	public String update() throws Exception{
		// 必须填写编号、名称、长度、宽度
			if(id == null || id < 0 ){
				this.addActionError("id不存在,请重试");
				return "error";
			}
			if(num == null || num.trim().equals("")){
				this.addActionError("编号不能为空,请重试");
				return "error";
			}
			if(mc == null || mc.trim().equals("")){
				this.addActionError("名称不能为空,请重试");
				return "error";
			}
			if(cd == null || cd.trim().equals("")){
				this.addActionError("长度不能为空,请重试");
				return "error";
			}
			if(kd == null || kd.trim().equals("")){
				this.addActionError("宽度不能为空,请重试");
				return "error";
			}
			try{
				this.blService.update(id,num, mc, hd, zl, kd, cd,sl);
				return "save";
			}catch (Exception e) {
				e.printStackTrace();
				this.addActionError(e.getMessage());
				return "error";
			}
			
			
		
	}
	
	// ----------------------getter and setter-----------------
	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
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

	public String getKd() {
		return kd;
	}

	public void setKd(String kd) {
		this.kd = kd;
	}

	public String getCd() {
		return cd;
	}

	public void setCd(String cd) {
		this.cd = cd;
	}

	public Integer getSl() {
		return sl;
	}

	public void setSl(Integer sl) {
		this.sl = sl;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
}
