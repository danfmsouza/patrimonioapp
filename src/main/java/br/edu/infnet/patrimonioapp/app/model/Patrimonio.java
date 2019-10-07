package br.edu.infnet.patrimonioapp.app.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Patrimonio {
	
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	private String item;
	private Boolean etiqueta;
	private Integer serial;
	private String local;
	
	
	public Patrimonio() {
	}

	public Patrimonio(String item, Boolean etiqueta) {
		super();
		this.item = item;
		this.etiqueta = etiqueta;
	}

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public Boolean getEtiqueta() {
		return etiqueta;
	}

	public void setEtiqueta(Boolean etiqueta) {
		this.etiqueta = etiqueta;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getSerial() {
		return serial;
	}

	public void setSerial(Integer serial) {
		this.serial = serial;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}
			
}
