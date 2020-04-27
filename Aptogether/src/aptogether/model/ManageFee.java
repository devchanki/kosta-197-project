package aptogether.model;

import java.io.Serializable;

public class ManageFee implements Serializable {
	private int fee_seq;
	private int member_seq;
	private int general_fee;
	private int security_fee;
	private int cleaning_fee;
	private int fumigation_fee;
	private int lift_maintenance_fee;
	private int electricity_fee;
	private int water_fee;
	private int heating_fee;
	
	public ManageFee() {}
	

	public ManageFee(int member_seq, int general_fee, int security_fee, int cleaning_fee, int fumigation_fee, int lift_maintenance_fee,int electricity_fee, int water_fee, int heating_fee) {
		super();
		this.member_seq = member_seq;
		this.general_fee = general_fee;
		this.security_fee = security_fee;
		this.cleaning_fee = cleaning_fee;
		this.fumigation_fee = fumigation_fee;
		this.lift_maintenance_fee = lift_maintenance_fee;
		this.electricity_fee = electricity_fee;
		this.water_fee = water_fee;
		this.heating_fee = heating_fee;
	}

	public int getFee_seq() {
		return fee_seq;
	}

	public void setFee_seq(int fee_seq) {
		this.fee_seq = fee_seq;
	}

	public int getMember_seq() {
		return member_seq;
	}

	public void setMember_seq(int member_seq) {
		this.member_seq = member_seq;
	}

	public int getGeneral_fee() {
		return general_fee;
	}

	public void setGeneral_fee(int general_fee) {
		this.general_fee = general_fee;
	}

	public int getSecurity_fee() {
		return security_fee;
	}

	public void setSecurity_fee(int security_fee) {
		this.security_fee = security_fee;
	}

	public int getCleaning_fee() {
		return cleaning_fee;
	}

	public void setCleaning_fee(int cleaning_fee) {
		this.cleaning_fee = cleaning_fee;
	}

	public int getFumigation_fee() {
		return fumigation_fee;
	}

	public void setFumigation_fee(int fumigation_fee) {
		this.fumigation_fee = fumigation_fee;
	}

	public int getLift_maintenance_fee() {
		return lift_maintenance_fee;
	}

	public void setLift_maintenance_fee(int lift_maintenance_fee) {
		this.lift_maintenance_fee = lift_maintenance_fee;
	}

	public int getElectricity_fee() {
		return electricity_fee;
	}

	public void setElectricity_fee(int electricity_fee) {
		this.electricity_fee = electricity_fee;
	}

	public int getWater_fee() {
		return water_fee;
	}

	public void setWater_fee(int water_fee) {
		this.water_fee = water_fee;
	}

	public int getHeating_fee() {
		return heating_fee;
	}

	public void setHeating_fee(int heating_fee) {
		this.heating_fee = heating_fee;
	}

	@Override
	public String toString() {
		return "Manage_Fee [fee_seq=" + fee_seq + ", member_seq=" + member_seq + ", general_fee=" + general_fee
				+ ", security_fee=" + security_fee + ", cleaning_fee=" + cleaning_fee + ", fumigation_fee="
				+ fumigation_fee + ", lift_maintenance_fee=" + lift_maintenance_fee + ", electricity_fee="
				+ electricity_fee + ", water_fee=" + water_fee + ", heating_fee=" + heating_fee + "]";
	}
	
	

}
