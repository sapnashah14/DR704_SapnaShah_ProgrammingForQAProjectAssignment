package org.java.assignment.qa;

import java.util.HashSet;

public class Hash_Set {

	public static void main(String[] args) {
		
		//Add and print five cities
		
		HashSet<String> cities=new HashSet<>();
		cities.add("Pune");
		cities.add("Mumbai");
		cities.add("Bangalore");
		cities.add("Chennai");
		cities.add("Kolkata");
		
		System.out.println("The cities in the set are: "+cities);
		
		//Add a duplicate city and print the set again.
		
		cities.add("Pune");
		System.out.println("The cities in the set after adding a duplicate city are: "+cities);

	}

}
