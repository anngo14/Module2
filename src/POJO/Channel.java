package POJO;

public class Channel {
	int channel_id;
	String channel_name;
	int channel_band;
	double channel_vcf;
	double channel_acf;
	String channel_change_type;
	String transmission_type;
	double channel_change;
	
	
	public Channel(int channel_id, String channel_name, int channel_band, double channel_vcf, double channel_acf,
			String channel_change_type, String transmission_type, double channel_change) {
		super();
		this.channel_id = channel_id;
		this.channel_name = channel_name;
		this.channel_band = channel_band;
		this.channel_vcf = channel_vcf;
		this.channel_acf = channel_acf;
		this.channel_change_type = channel_change_type;
		this.transmission_type = transmission_type;
		this.channel_change = channel_change;
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
	public int getChannel_band() {
		return channel_band;
	}
	public void setChannel_band(int channel_band) {
		this.channel_band = channel_band;
	}
	public double getChannel_vcf() {
		return channel_vcf;
	}
	public void setChannel_vcf(double channel_vcf) {
		this.channel_vcf = channel_vcf;
	}
	public double getChannel_acf() {
		return channel_acf;
	}
	public void setChannel_acf(double channel_acf) {
		this.channel_acf = channel_acf;
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
	public double getChannel_change() {
		return channel_change;
	}
	public void setChannel_change(double channel_change) {
		this.channel_change = channel_change;
	}
	@Override
	public String toString() {
		return "Channel [channel_id=" + channel_id + ", channel_name=" + channel_name + ", channel_band=" + channel_band
				+ ", channel_vcf=" + channel_vcf + ", channel_acf=" + channel_acf + ", channel_change_type="
				+ channel_change_type + ", transmission_type=" + transmission_type + ", channel_change="
				+ channel_change + "]";
	}
	
	

}
