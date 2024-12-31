package dao;

import java.util.ArrayList;

import dto.Home;

public class HomeRepository {
	private ArrayList<Home> listOfHomes = new ArrayList<Home>();
	private static HomeRepository instance = new HomeRepository();
	
	public static HomeRepository getInstance() {
		return instance;
	}
	
	public HomeRepository() {
		Home home1 = new Home("201", "김건효", 1054402281);
		home1.setaddress("충청남도 논산시 와야길 6-3 블루하우스 201호");
		home1.setCategory("Three Room");
		home1.setrealtor("new");
		home1.setFilename("home1.jfif");
		
		Home home2 = new Home("202", "남상혁", 1012345678);
		home2.setaddress("충청남도 논산시 와야길 6-3 블루하우스 202호");
		home2.setCategory("Two Room");
		home2.setrealtor("Refurbished");
		home2.setFilename("P702.jpg");
		
		Home home3 = new Home("301", "박병윤", 109876543);
		home3.setaddress("충청남도 논산시 와야길 6-3 블루하우스 303호");
		home3.setCategory("One Room");
		home3.setrealtor("Old");
		home3.setFilename("P703.jfif");
		
		
		listOfHomes.add(home1);
		listOfHomes.add(home2);
		listOfHomes.add(home3);
		
		
	}
	public ArrayList<Home> getAllHomes(){
		return listOfHomes;
	}
	public Home getHomeByname(String name) {
		Home homeByname =null;
		
		for (int i = 0; i<listOfHomes.size(); i++) {
			Home home = listOfHomes.get(i);
			if (home != null && home.getHomename() != null &&
					home.getHomename().equals(name)) 
			{
				homeByname = home;
				break;
				
			}
		}
		return homeByname;
	}
	public void addhome(Home home) {
		listOfHomes.add(home);
	}
}
