package POJO;

public class STB_Inventory {
	int stb_inventory_id;
	String stb_type;
	int stb_serial_number;
	int stb_mac_id;
	int remote_asset_id;
	int dish_asset_id;
	String status;
	
	
	public STB_Inventory(int stb_inventory_id, String stb_type, int stb_serial_number, int stb_mac_id,
			int remote_asset_id, int dish_asset_id, String status) {
		super();
		this.stb_inventory_id = stb_inventory_id;
		this.stb_type = stb_type;
		this.stb_serial_number = stb_serial_number;
		this.stb_mac_id = stb_mac_id;
		this.remote_asset_id = remote_asset_id;
		this.dish_asset_id = dish_asset_id;
		this.status = status;
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
	public int getStb_serial_number() {
		return stb_serial_number;
	}
	public void setStb_serial_number(int stb_serial_number) {
		this.stb_serial_number = stb_serial_number;
	}
	public int getStb_mac_id() {
		return stb_mac_id;
	}
	public void setStb_mac_id(int stb_mac_id) {
		this.stb_mac_id = stb_mac_id;
	}
	public int getRemote_asset_id() {
		return remote_asset_id;
	}
	public void setRemote_asset_id(int remote_asset_id) {
		this.remote_asset_id = remote_asset_id;
	}
	public int getDish_asset_id() {
		return dish_asset_id;
	}
	public void setDish_asset_id(int dish_asset_id) {
		this.dish_asset_id = dish_asset_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "STB_Inventory [stb_inventory_id=" + stb_inventory_id + ", stb_type=" + stb_type + ", stb_serial_number="
				+ stb_serial_number + ", stb_mac_id=" + stb_mac_id + ", remote_asset_id=" + remote_asset_id
				+ ", dish_asset_id=" + dish_asset_id + ", status=" + status + "]";
	}
	
	

}
