package com.se77.hello;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.event.ActionEvent;
import javax.faces.event.ValueChangeEvent;

@ManagedBean
@SessionScoped
public class EventListenerBean {
	
	private String value;
	
	private String valueNew;
	
	private String valueOld;
	
	private String ajaxValue;
	
	public String actionMethod() {
		value = "action called.";
		return "index.xhtml";
	}
	
	public void listenerMethod(ActionEvent event) {
		value = "listener called";
	}
	
	public void valueChangeMethod(ValueChangeEvent event) {
		valueOld = (String)event.getOldValue();
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getValueNew() {
		return valueNew;
	}

	public void setValueNew(String valueNew) {
		this.valueNew = valueNew;
	}

	public String getValueOld() {
		return valueOld;
	}

	public void setValueOld(String valueOld) {
		this.valueOld = valueOld;
	}

	public String getAjaxValue() {
		return ajaxValue;
	}

	public void setAjaxValue(String ajaxValue) {
		this.ajaxValue = ajaxValue;
	}

}
