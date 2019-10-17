package Logic;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

public class CSVReader {
	public static void main(String args[]) throws ClassNotFoundException, SQLException
	{
		CSVReader obj = new CSVReader();
	    String  p= "C:\\Users\\Andrew\\Desktop\\citiesCopy.csv";
	    ArrayList<String[]> csvLine = obj.readCSVFile(p);
	    MainLogic ml=new MainLogic();
//	    ml.writeInventory(csvLine);
	    
//	    for(String st[]:csvLine) {
//	    	for(String temp:st)
//	    		System.out.print(temp+"\t");
//	    	System.out.println();
//	    }
	    String  pathToFile= "C:\\Users\\Andrew\\Desktop\\citiesCopyCopy.csv";
		
	    obj.writeCSVFile(pathToFile);
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
	public boolean writeCSVFile(String pathToFile) throws ClassNotFoundException, SQLException
	{
		//<a href="/images/myw3schoolsimage.jpg" download></a>
		try (FileWriter writer = new FileWriter(pathToFile);
				 BufferedWriter bw = new BufferedWriter(writer)) {
			MainLogic ml=new MainLogic();
			ArrayList<String> list=ml.fetchInventoryData();
			
			for(int i=0;i<list.size();i++)
			{
				String temp=list.get(i)+"\n";
				bw.write(temp);
			}
			bw.close();
			writer.close();
			} catch (IOException e) {
				System.err.format("IOException: %s%n", e);
			}   
		
		return false;
		
	}

}
