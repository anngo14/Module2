package POJO;

public class STB {
	int stb_id;
	String stb_type;
	String stb_features;
	int stb_length;
	int stb_breadth;
	int stb_width;
	double stb_price;
	double stb_installation_charges;
	double stb_upgradation_charge;
	double stb_discount;
	String stb_billing_type;
	double stb_refundable_deposit_amount;
	int stb_inventory_id;
	
	public STB(int stb_id, String stb_type, String stb_features, int stb_length, int stb_breadth, int stb_width,
			double stb_price, double stb_installation_charges, double stb_upgradation_charge, double stb_discount,
			String stb_billing_type, double stb_refundable_deposit_amount, int stb_inventory_id) {
		super();
		this.stb_id = stb_id;
		this.stb_type = stb_type;
		this.stb_features = stb_features;
		this.stb_length = stb_length;
		this.stb_breadth = stb_breadth;
		this.stb_width = stb_width;
		this.stb_price = stb_price;
		this.stb_installation_charges = stb_installation_charges;
		this.stb_upgradation_charge = stb_upgradation_charge;
		this.stb_discount = stb_discount;
		this.stb_billing_type = stb_billing_type;
		this.stb_refundable_deposit_amount = stb_refundable_deposit_amount;
		this.stb_inventory_id = stb_inventory_id;
	}
	public int getStb_id() {
		return stb_id;
	}
	public void setStb_id(int stb_id) {
		this.stb_id = stb_id;
	}
	public String getStb_type() {
		return stb_type;
	}
	public void setStb_type(String stb_type) {
		this.stb_type = stb_type;
	}
	public String getStb_features() {
		return stb_features;
	}
	public void setStb_features(String stb_features) {
		this.stb_features = stb_features;
	}
	public int getStb_length() {
		return stb_length;
	}
	public void setStb_length(int stb_length) {
		this.stb_length = stb_length;
	}
	public int getStb_breadth() {
		return stb_breadth;
	}
	public void setStb_breadth(int stb_breadth) {
		this.stb_breadth = stb_breadth;
	}
	public int getStb_width() {
		return stb_width;
	}
	public void setStb_width(int stb_width) {
		this.stb_width = stb_width;
	}
	public double getStb_price() {
		return stb_price;
	}
	public void setStb_price(double stb_price) {
		this.stb_price = stb_price;
	}
	public double getStb_installation_charges() {
		return stb_installation_charges;
	}
	public void setStb_installation_charges(double stb_installation_charges) {
		this.stb_installation_charges = stb_installation_charges;
	}
	public double getStb_upgradation_charge() {
		return stb_upgradation_charge;
	}
	public void setStb_upgradation_charge(double stb_upgradation_charge) {
		this.stb_upgradation_charge = stb_upgradation_charge;
	}
	public double getStb_discount() {
		return stb_discount;
	}
	public void setStb_discount(double stb_discount) {
		this.stb_discount = stb_discount;
	}
	public String getStb_billing_type() {
		return stb_billing_type;
	}
	public void setStb_billing_type(String stb_billing_type) {
		this.stb_billing_type = stb_billing_type;
	}
	public double getStb_refundable_deposit_amount() {
		return stb_refundable_deposit_amount;
	}
	public void setStb_refundable_deposit_amount(double stb_refundable_deposit_amount) {
		this.stb_refundable_deposit_amount = stb_refundable_deposit_amount;
	}
	public int getStb_inventory_id() {
		return stb_inventory_id;
	}
	public void setStb_inventory_id(int stb_inventory_id) {
		this.stb_inventory_id = stb_inventory_id;
	}
	@Override
	public String toString() {
		return "STB [stb_id=" + stb_id + ", stb_type=" + stb_type + ", stb_features=" + stb_features + ", stb_length="
				+ stb_length + ", stb_breadth=" + stb_breadth + ", stb_width=" + stb_width + ", stb_price=" + stb_price
				+ ", stb_installation_charges=" + stb_installation_charges + ", stb_upgradation_charge="
				+ stb_upgradation_charge + ", stb_discount=" + stb_discount + ", stb_billing_type=" + stb_billing_type
				+ ", stb_refundable_deposit_amount=" + stb_refundable_deposit_amount + ", stb_inventory_id="
				+ stb_inventory_id + "]";
	}
	
	
}
