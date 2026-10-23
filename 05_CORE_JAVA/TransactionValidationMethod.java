package org.java.assignment.qa;

public class TransactionValidationMethod {
	
	public static String validateTransaction(double amount) {
		 
		if(amount>0) {
			return "VALID";
		}else {
			return "INVALID";
		}
	}

	public static void main(String[] args) {
		
		double amount = -25.50;
		
		
		System.out.println(validateTransaction(amount));
		

	}

}
