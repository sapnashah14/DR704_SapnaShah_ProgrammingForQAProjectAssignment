package org.java.assignment.qa;

import java.util.Scanner;

public class TransactionValidation {

	public static void main(String[] args) {
		
		Scanner sc=new Scanner(System.in);
		
		System.out.print("Enter transaction ID:");
		int id=sc.nextInt();
		
		System.out.print("Enter transaction amount:");
		double amount =sc.nextDouble();
		
		if(amount>0) {
			
			System.out.println("The amount is valid for transaction ID: " + id);
			
		} else {
			
			System.out.println("The amount is invalid for transaction ID: " + id);
		}
		
    sc.close();
	}

}
