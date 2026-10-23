package org.java.assignment.qa;

import java.util.HashMap;

public class Hash_Map {

	public static void main(String[] args) {
		
		//Store five student IDs with names.
		
		HashMap<Integer, String> students = new HashMap<>();
		students.put(1, "Sonia");
		students.put(2, "Radhika");
		students.put(3, "Kartik");
		students.put(4, "Vishal");
		students.put(5, "Roshni");
		
		System.out.println("The student IDs with names are: " + students);
		
		//Look up and print the name for a given ID
		
		System.out.println("The name for student ID 1 is: " + students.get(1));
		System.out.println("The name for student ID 2 is: " + students.get(2));
		System.out.println("The name for student ID 3 is: " + students.get(3));
		System.out.println("The name for student ID 4 is: " + students.get(4));
		System.out.println("The name for student ID 5 is: " + students.get(5));

	}

}
