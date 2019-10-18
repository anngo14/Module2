package POJO;

public class Category {
	private int category_id;
	private int package_id;
	private int min_channel;
	private int max_channel;
	private String category_description;
	
	
	public Category(int category_id, int package_id, int min_channel, int max_channel, String category_description) {
		super();
		this.category_id = category_id;
		this.package_id = package_id;
		this.min_channel = min_channel;
		this.max_channel = max_channel;
		this.category_description = category_description;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public int getPackage_id() {
		return package_id;
	}
	public void setPackage_id(int package_id) {
		this.package_id = package_id;
	}
	public int getMin_channel() {
		return min_channel;
	}
	public void setMin_channel(int min_channel) {
		this.min_channel = min_channel;
	}
	public int getMax_channel() {
		return max_channel;
	}
	public void setMax_channel(int max_channel) {
		this.max_channel = max_channel;
	}
	public String getCategory_description() {
		return category_description;
	}
	public void setCategory_description(String category_description) {
		this.category_description = category_description;
	}
	
}
