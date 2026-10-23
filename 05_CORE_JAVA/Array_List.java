package org.java.assignment.qa;

import java.util.ArrayList;

public class Array_List {

	public static void main(String[] args) {
		
		//System.out.println(" Add and print five student names");
		
		ArrayList<String> name=new ArrayList<>();
		name.add("Sonia");
		name.add("Radhika");
		name.add("Kartik");
		name.add("Vishal");
		name.add("Roshni");
		
		System.out.println("The names in the list are: " + name);
		
		//System.out.println("Remove a name from the list and print the updated list");
		
		name.remove("Roshni");
		System.out.println("The updated names in the list are: " + name);
	}

}
