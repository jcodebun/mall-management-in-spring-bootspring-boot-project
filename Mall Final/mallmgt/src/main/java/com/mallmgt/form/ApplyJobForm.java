package com.mallmgt.form;


import javax.validation.constraints.NotEmpty;

import com.mallmgt.dto.ApplyJobDTO;
import com.mallmgt.dto.BaseDTO;
import com.mallmgt.utility.DataUtility;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ApplyJobForm extends BaseDTO {

	private String jobId;
	
	private String userId;
	
	@NotEmpty(message =  "This Field is Required")
	private String name;
	
	@NotEmpty(message =  "This Field is Required")
	private String email;
	
	@NotEmpty(message =  "This Field is Required")
	private String phoneNumber;
	
	@NotEmpty(message =  "This Field is Required")
	private String experience;
	

	
	
	public ApplyJobDTO getDTO() {	
		ApplyJobDTO bean=new ApplyJobDTO();
			bean.setId(id);
			bean.setName(name);
			bean.setEmail(email);
			bean.setPhoneNumber(phoneNumber);
			bean.setExperience(experience);
			bean.setUserId(DataUtility.getLong(userId));
			bean.setJobId(DataUtility.getLong(jobId));


			return bean;
		}

		public void populate(ApplyJobDTO bean) {
			id = bean.getId();
	        name = bean.getName();
	        email = bean.getEmail();
	        phoneNumber = bean.getPhoneNumber();
	        experience = bean.getExperience();
	        userId = DataUtility.getStringData(bean.getUserId());
	        jobId = DataUtility.getStringData(bean.getJobId());


		}
}
