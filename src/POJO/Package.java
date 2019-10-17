package POJO;

public class Package {
	int package_id;
	String package_name;
	String package_category;
	String package_charging_type;
	String transmission_type;
	double package_cost;
	String package_available_from;
	String package_available_to;
	String package_default;
	
	
	public Package(int package_id, String package_name, String package_category, String package_charging_type,
			String transmission_type, double package_cost, String package_available_from, String package_available_to,
			String package_default) {
		super();
		this.package_id = package_id;
		this.package_name = package_name;
		this.package_category = package_category;
		this.package_charging_type = package_charging_type;
		this.transmission_type = transmission_type;
		this.package_cost = package_cost;
		this.package_available_from = package_available_from;
		this.package_available_to = package_available_to;
		this.package_default = package_default;
	}
	
	public int getPackage_id() {
		return package_id;
	}
	public void setPackage_id(int package_id) {
		this.package_id = package_id;
	}
	public String getPackage_name() {
		return package_name;
	}
	public void setPackage_name(String package_name) {
		this.package_name = package_name;
	}
	public String getPackage_category() {
		return package_category;
	}
	public void setPackage_category(String package_category) {
		this.package_category = package_category;
	}
	public String getPackage_charging_type() {
		return package_charging_type;
	}
	public void setPackage_charging_type(String package_charging_type) {
		this.package_charging_type = package_charging_type;
	}
	public String getTransmission_type() {
		return transmission_type;
	}
	public void setTransmission_type(String transmission_type) {
		this.transmission_type = transmission_type;
	}
	public double getPackage_cost() {
		return package_cost;
	}
	public void setPackage_cost(double package_cost) {
		this.package_cost = package_cost;
	}
	public String getPackage_available_from() {
		return package_available_from;
	}
	public void setPackage_available_from(String package_available_from) {
		this.package_available_from = package_available_from;
	}
	public String getPackage_available_to() {
		return package_available_to;
	}
	public void setPackage_available_to(String package_available_to) {
		this.package_available_to = package_available_to;
	}
	public String getPackage_default() {
		return package_default;
	}
	public void setPackage_default(String package_default) {
		this.package_default = package_default;
	}

	@Override
	public String toString() {
		return "Package [package_id=" + package_id + ", package_name=" + package_name + ", package_category="
				+ package_category + ", package_charging_type=" + package_charging_type + ", transmission_type="
				+ transmission_type + ", package_cost=" + package_cost + ", package_available_from="
				+ package_available_from + ", package_available_to=" + package_available_to + ", package_default="
				+ package_default + ", channel_id=" + "]";
	}
	
	

}
