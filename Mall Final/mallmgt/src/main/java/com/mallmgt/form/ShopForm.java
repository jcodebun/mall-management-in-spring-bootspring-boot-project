package com.mallmgt.form;

import javax.validation.constraints.NotEmpty;
import com.mallmgt.dto.BaseDTO;
import com.mallmgt.dto.ShopDTO;
import lombok.Getter;
import lombok.Setter;


public class ShopForm extends BaseDTO {

	
	   private long userId;
	   
	   @NotEmpty(message = "ShopName is required")
	   private String shopName;
	   
	   @NotEmpty(message = "OwnerName is required")
	   private String ownerName;
	   
	   @NotEmpty(message = "ContactNumber is required")
	   private String contactNumber;
	   
	   @NotEmpty(message = "Email is required")
	   private String email;
	   
	   @NotEmpty(message = "OpeningTime is required")
	   private String openingTime;
	   
	   @NotEmpty(message = "ClosingTime is required")
	   private String closingTime;
	   
	   
	   
	   public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getShopName() {
		return shopName;
	}

	public void setShopName(String shopName) {
		this.shopName = shopName;
	}

	public String getOwnerName() {
		return ownerName;
	}

	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getOpeningTime() {
		return openingTime;
	}

	public void setOpeningTime(String openingTime) {
		this.openingTime = openingTime;
	}

	public String getClosingTime() {
		return closingTime;
	}

	public void setClosingTime(String closingTime) {
		this.closingTime = closingTime;
	}

	public ShopDTO getDTO() {
			
		   ShopDTO bean=new ShopDTO();
			
			bean.setId(id);
			bean.setShopName(shopName);
			bean.setOwnerName(ownerName);
			bean.setContactNumber(contactNumber);
			bean.setEmail(email);
			bean.setOpeningTime(openingTime);
			bean.setClosingTime(closingTime);

			return bean;
		}

		public void populate(ShopDTO bean) {
			id = bean.getId();
	        shopName = bean.getShopName();
	        ownerName = bean.getOwnerName();
	        contactNumber = bean.getContactNumber();
	        email = bean.getEmail();
	        openingTime = bean.getOpeningTime();
	        closingTime = bean.getClosingTime();

		}
}
