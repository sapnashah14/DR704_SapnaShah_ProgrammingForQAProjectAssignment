package org.java.assignment.qa;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
import java.io.File;

public class TransactionFileHandling {
	
	public static String validateTransaction(double amount) {
		 
		if(amount>0) {
			return "VALID";
		}else {
			return "INVALID";
		}
	}


	public static void main(String[] args) throws IOException {
		
		FileWriter fw=new FileWriter("transaction.txt");
		
		fw.write("5000\n");
		fw.write("-2500\n");
		fw.write("8000\n");
		fw.write("0\n");
		
fw.close();
		
		System.out.println("Transaction data written to file successfully.");
		
		Scanner sc=new Scanner(new File("transaction.txt"));
		while(sc.hasNextDouble()) {
			double amount = sc.nextDouble();
		
			System.out.println(amount+" : "+validateTransaction(amount));
			
		}
		sc.close(); 
	}

}
