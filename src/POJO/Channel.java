package POJO;

public class Channel {
	int channel_id;
	int package_id;
	String channel_name;
	String channel_band;
	String channel_vcf;
	String channel_acf;
	String channel_change_type;
	String transmission_type;
	String channel_change;
	String channel_status;
	
	
	
	
	public Channel(int channel_id, int package_id, String channel_name, String channel_band, String channel_vcf,
			String channel_acf, String channel_change_type, String transmission_type, String channel_change,
			String channel_status) {
		super();
		this.channel_id = channel_id;
		this.package_id = package_id;
		this.channel_name = channel_name;
		this.channel_band = channel_band;
		this.channel_vcf = channel_vcf;
		this.channel_acf = channel_acf;
		this.channel_change_type = channel_change_type;
		this.transmission_type = transmission_type;
		this.channel_change = channel_change;
		this.channel_status = channel_status;
	}
	public int getPackage_id() {
		return package_id;
	}
	public void setPackage_id(int package_id) {
		this.package_id = package_id;
	}
	public String getChannel_status() {
		return channel_status;
	}
	public void setChannel_status(String channel_status) {
		this.channel_status = channel_status;
	}
	public void setChannel_band(String channel_band) {
		this.channel_band = channel_band;
	}
	public String getChannel_band() {
		return channel_band;
	}
	public String getChannel_vcf() {
		return channel_vcf;
	}
	public String getChannel_acf() {
		return channel_acf;
	}
	public void setChannel_vcf(String channel_vcf) {
		this.channel_vcf = channel_vcf;
	}
	public void setChannel_acf(String channel_acf) {
		this.channel_acf = channel_acf;
	}
	public int getChannel_id() {
		return channel_id;
	}
	public void setChannel_id(int channel_id) {
		this.channel_id = channel_id;
	}
	public String getChannel_name() {
		return channel_name;
	}
	public void setChannel_name(String channel_name) {
		this.channel_name = channel_name;
	}
	public String getChannel_change_type() {
		return channel_change_type;
	}
	public void setChannel_change_type(String channel_change_type) {
		this.channel_change_type = channel_change_type;
	}
	public String getTransmission_type() {
		return transmission_type;
	}
	public void setTransmission_type(String transmission_type) {
		this.transmission_type = transmission_type;
	}
	public String getChannel_change() {
		return channel_change;
	}
	public void setChannel_change(String channel_change) {
		this.channel_change = channel_change;
	}
	@Override
	public String toString() {
		return "Channel [channel_id=" + channel_id + ", package_id=" + package_id + ", channel_name=" + channel_name
				+ ", channel_band=" + channel_band + ", channel_vcf=" + channel_vcf + ", channel_acf=" + channel_acf
				+ ", channel_change_type=" + channel_change_type + ", transmission_type=" + transmission_type
				+ ", channel_change=" + channel_change + ", channel_status=" + channel_status + "]";
	}
	
	
	

}
