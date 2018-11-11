package cn.edu.cqupt.model;

import java.math.BigDecimal;
import java.util.Date;

/**
 * @author yydcl
 *
 */
public class DraftInfo {

	private String name;
	
	private String idNumber;
	
	private String checkId;
	
	private BigDecimal capital;
	
	private String cardID;
	
	private String status;
	
	private Date endDate;
	
	public String getCheckId() {
		return checkId;
	}

	public void setCheckId(String checkId) {
		this.checkId = checkId;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	public String getIdNumber() {
		return idNumber;
	}

	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber == null ? null : idNumber.trim();
	}
	
	public BigDecimal getCapital() {
		return capital;
	}

	public void setCapital(BigDecimal capital) {
		this.capital = capital;
	}

	public String getCardID() {
		return cardID;
	}

	public void setCardID(String cardID) {
		this.cardID = cardID == null ? null : cardID.trim();
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status == null ? null : status.trim();
	}
	
	@Override
	public String toString() {
		return "LoanApprovalInfo [name=" + name + ", idNumber=" + idNumber +  ", capital="
				+ capital + ", cardID=" + cardID + ", status=" + status + "]";
	}
}
