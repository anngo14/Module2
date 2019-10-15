package Logic;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class CSVReader {
	public static void main(String args[])
	{
		CSVReader obj = new CSVReader();
	    String  p= "C:\\Users\\user\\Documents\\cities.csv";
	    ArrayList<String[]> csvLine = obj.readCSVFile(p);
	 
	    
	    for(String st[]:csvLine) {
	    	for(String temp:st)
	    		System.out.print(temp+"\t");
	    	System.out.println();
	    }
	}
	public ArrayList<String[]> readCSVFile(String pathToFile)
	{
		BufferedReader csvReader = null;
		try {
			csvReader = new BufferedReader(new FileReader(pathToFile));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    String row;
	    String[] dataRow=null;

	    ArrayList<String[]> data=new ArrayList<>();
	    
	    try {
			while ((row = csvReader.readLine()) != null) {
				dataRow = row.split(",");
				data.add(dataRow);				
			}
			csvReader.close();      
		    
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}   
	    return data;
	}

}
