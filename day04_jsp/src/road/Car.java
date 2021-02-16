package road;

public class Car {
	private String brand;
	private String color;
	private int price;
	private boolean engine=false;
	
	//Alt+Shift+S > R : Getter, Setter 생성하기
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public boolean isEngine() {
		return engine;
	}
	public void setEngine(boolean engine) {
		this.engine = engine;
	}
	
	
	public String engineStart() {
		if(!engine) {
			return brand+" 시동켜기";
		}else {
			return "이미 시동이 켜져있습니다";
		}
	}
	public String engineStop() {
		if(engine) {
			return brand+" 시동끄기";
		}else {
			return "이미 시동이 꺼져있습니다";
		}
	}
}
