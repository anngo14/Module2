package POJO;

public class STB_Inventory {
	int stb_inventory_id;
	String stb_type;
	String stb_serial_number;
	long stb_mac_id;
	long remote_asset_id;
	long dish_asset_id;
	String status;
	int retailer_id;
	
	
	public STB_Inventory(int stb_inventory_id, String stb_type, String stb_serial_number, long stb_mac_id,
			long remote_asset_id, long dish_asset_id, String status, int retailer_id) {
		super();
		this.stb_inventory_id = stb_inventory_id;
		this.stb_type = stb_type;
		this.stb_serial_number = stb_serial_number;
		this.stb_mac_id = stb_mac_id;
		this.remote_asset_id = remote_asset_id;
		this.dish_asset_id = dish_asset_id;
		this.status = status;
		this.retailer_id = retailer_id;
	}
	public int getStb_inventory_id() {
		return stb_inventory_id;
	}
	public void setStb_inventory_id(int stb_inventory_id) {
		this.stb_inventory_id = stb_inventory_id;
	}
	public String getStb_type() {
		return stb_type;
	}
	public void setStb_type(String stb_type) {
		this.stb_type = stb_type;
	}
	public String getStb_serial_number() {
		return stb_serial_number;
	}
	public void setStb_serial_number(String stb_serial_number) {
		this.stb_serial_number = stb_serial_number;
	}
	public long getStb_mac_id() {
		return stb_mac_id;
	}
	public void setStb_mac_id(long stb_mac_id) {
		this.stb_mac_id = stb_mac_id;
	}
	public long getRemote_asset_id() {
		return remote_asset_id;
	}
	public void setRemote_asset_id(long remote_asset_id) {
		this.remote_asset_id = remote_asset_id;
	}
	public long getDish_asset_id() {
		return dish_asset_id;
	}
	public void setDish_asset_id(long dish_asset_id) {
		this.dish_asset_id = dish_asset_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getRetailer_id() {
		return retailer_id;
	}
	public void setRetailer_id(int retailer_id) {
		this.retailer_id = retailer_id;
	}
	@Override
	public String toString() {
		return "STB_Inventory [stb_inventory_id=" + stb_inventory_id + ", stb_type=" + stb_type + ", stb_serial_number="
				+ stb_serial_number + ", stb_mac_id=" + stb_mac_id + ", remote_asset_id=" + remote_asset_id
				+ ", dish_asset_id=" + dish_asset_id + ", status=" + status + ", retailer_id=" + retailer_id + "]";
	}
	
	
	
	
	

}
