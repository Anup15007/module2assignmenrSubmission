package com.cg.project.beans;

public class BillDTO {
	private int BillNumber;
	private String BillMonth,billAmount;
	private double meterReading,unitConsumed;
	public BillDTO(int billNumber, String billMonth, String billAmount,
			double meterReading, double unitConsumed) {
		super();
		BillNumber = billNumber;
		BillMonth = billMonth;
		this.billAmount = billAmount;
		this.meterReading = meterReading;
		this.unitConsumed = unitConsumed;
	}
	public int getBillNumber() {
		return BillNumber;
	}
	public void setBillNumber(int billNumber) {
		BillNumber = billNumber;
	}
	public String getBillMonth() {
		return BillMonth;
	}
	public void setBillMonth(String billMonth) {
		BillMonth = billMonth;
	}
	public String getBillAmount() {
		return billAmount;
	}
	public void setBillAmount(String billAmount) {
		this.billAmount = billAmount;
	}
	public double getMeterReading() {
		return meterReading;
	}
	public void setMeterReading(double meterReading) {
		this.meterReading = meterReading;
	}
	public double getUnitConsumed() {
		return unitConsumed;
	}
	public void setUnitConsumed(double unitConsumed) {
		this.unitConsumed = unitConsumed;
	}
	@Override
	public String toString() {
		return "BillDTO [BillNumber=" + BillNumber + ", BillMonth=" + BillMonth
				+ ", billAmount=" + billAmount + ", meterReading="
				+ meterReading + ", unitConsumed=" + unitConsumed + "]";
	}
	
	
	
	
	
	
	
	
	
	
}
