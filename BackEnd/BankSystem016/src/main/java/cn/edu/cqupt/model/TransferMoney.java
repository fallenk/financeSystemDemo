package cn.edu.cqupt.model;

import java.sql.Date;

import javax.xml.crypto.Data;

public class TransferMoney {
	 //用户名
	 String userid;
	 public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserIDnumber() {
		return userIDnumber;
	}
	public void setUserIDnumber(String userIDnumber) {
		this.userIDnumber = userIDnumber;
	}
	public String getOtherIDnumber() {
		return otherIDnumber;
	}
	public void setOtherIDnumber(String otherIDnumber) {
		this.otherIDnumber = otherIDnumber;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public Date getTransfertime() {
		return  transfertime;
	}
	public void setTransfertime(Date transfertime) {
		this.transfertime =  transfertime;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	//用户银行卡号
	 String userIDnumber;
	 //转账对方银行卡号
	 String otherIDnumber;
	 //金额
	 int money;
	 //时间
	 Date transfertime;
	 //操作类型
	 int status;

}
