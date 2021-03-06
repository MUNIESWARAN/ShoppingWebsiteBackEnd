
package com.ahmad.model;

import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name = "supplier")
@Component
public class Supplier {
	@Id
	private String supplierId;
	private String supplierName;
	private String supplierContact;
	private String supplierEmail;
	private String supplierAddress;
	
	@Transient
	private MultipartFile supplierImage;

	public String getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getSupplierContact() {
		return supplierContact;
	}

	public void setSupplierContact(String supplierContact) {
		this.supplierContact = supplierContact;
	}

	public String getSupplierEmail() {
		return supplierEmail;
	}

	public void setSupplierEmail(String supplierEmail) {
		this.supplierEmail = supplierEmail;
	}

	public String getSupplierAddress() {
		return supplierAddress;
	}

	public void setSupplierAddress(String supplierAddress) {
		this.supplierAddress = supplierAddress;
	}

	public MultipartFile getSupplierImage() {
		return supplierImage;
	}

	public void setSupplierImage(MultipartFile supplierImage) {
		this.supplierImage = supplierImage;
	}

	@Override
	public String toString() {
		return "Supplier [supplierId=" + supplierId + ", supplierName=" + supplierName + ", supplierContact="
				+ supplierContact + ", supplierEmail=" + supplierEmail + ", supplierAddress=" + supplierAddress
				+ ", supplierImage=" + supplierImage + "]";
	}

	public Supplier()
	{
		this.supplierId=UUID.randomUUID().toString().substring(24).toUpperCase();
	}
	
}
