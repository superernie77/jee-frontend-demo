package com.se77.hello;

import java.util.ArrayList;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

@ManagedBean
@RequestScoped
public class ListBean {
	private ArrayList<String> countries;
	private String selection;

	public ArrayList<String> getCountries() {
		if (countries == null) {
			countries = new ArrayList<>();

			countries.add("Deutschland");
			countries.add("Italien");
			countries.add("Frankreich");
			countries.add("Spanien");
			countries.add("Griechenland");
		}

		return countries;
	}

	public String getSelection() {
		return selection;
	}

	public void setSelection(String selection) {
		this.selection = selection;
	}
}
