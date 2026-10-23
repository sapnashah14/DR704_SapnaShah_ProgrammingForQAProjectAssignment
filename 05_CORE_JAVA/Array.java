package org.java.assignment.qa;

public class Array {

	public static void main(String[] args) {

		System.out.println("Store five numbers in an array and print them.");
		
		int a[] = {145,119,308,567,50};
		for (int b:a) {
			System.out.println(b);
		}

		System.out.println("Find the largest number in the array.");
		
		int largest = a[0];
		for (int i=1; i<a.length; i++) {
			if(a[i]>largest) {
				largest = a[i];
			
			}
		}
		
		System.out.println("The largest number in the array is: "+ largest);
	}

}
