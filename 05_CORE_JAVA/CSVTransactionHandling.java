package org.java.assignment.qa;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
import java.io.File;

public class CSVTransactionHandling {
		
		public static String validateTransaction(double amount) {
			 
			if(amount>0) {
				return "VALID";
			}else {
				return "INVALID";
			}
		}

	public static void main(String[] args) throws IOException {
		
		FileWriter fw=new FileWriter("transactions.csv");
		fw.write("transaction_id,amount\n");
		fw.write("101,5000\n");
		fw.write("102,-2500\n");
		fw.write("103,0\n");
		fw.close();
		
		Scanner sc=new Scanner(new File("transactions.csv"));
		while(sc.hasNextLine()) {
			String amount = sc.nextLine();
			
			if (amount.equals("transaction_id,amount")) {
			    continue;
			}
			
			String[] data = amount.split(",");
			
			double transactionAmount = Double.parseDouble(data[1]);
		
			System.out.println(data[0]+": "+validateTransaction(transactionAmount));
			
		}
		sc.close(); 
		

	}
}

