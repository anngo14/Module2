package POJO;
//function addItem(){
//    var ul = document.getElementById("dynamic-list");
//    var candidate = document.getElementById("candidate");
//    var li = document.createElement("li");
//    li.setAttribute('id',candidate.value);
//    li.appendChild(document.createTextNode(candidate.value));
//    ul.appendChild(li);
//}
//
//function removeItem(){
//    var ul = document.getElementById("dynamic-list");
//    var candidate = document.getElementById("candidate");
//    var item = document.getElementById(candidate.value);
//    ul.removeChild(item);
//}

import javax.servlet.http.HttpServletRequest;

public class CategoryManagement {
	public CategoryManagement(HttpServletRequest request) {
		String query = "select * from category where userID = 'id";
		//fetch data from db
		String name = "name";//should fetch data from db
		
		request.setAttribute("name", name);
		
	}
	
	
	public void addItem(HttpServletRequest request) {
		request.getParameterValues("candidate");
		
	}
	
}
