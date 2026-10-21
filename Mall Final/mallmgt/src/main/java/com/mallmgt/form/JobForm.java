package com.mallmgt.form;

import javax.validation.constraints.NotEmpty;

import com.mallmgt.dto.BaseDTO;
import com.mallmgt.dto.JobDTO;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class JobForm extends BaseDTO{

	   private long userId;
	   
	   @NotEmpty(message = "Field is required")
	   private String jobName;
	   
	   @NotEmpty(message = "Field is required")
	   private String description;
	   
	   @NotEmpty(message = "Field is required")
	   private String contactNumber;
	   
	   @NotEmpty(message = "Field is required")
	   private String email;

	   public JobDTO getDTO() {
			
		   JobDTO bean=new JobDTO();
			
			bean.setId(id);
			bean.setJobName(jobName);
			bean.setDescription(description);
			bean.setContactNumber(contactNumber);
			bean.setEmail(email);


			return bean;
		}

		public void populate(JobDTO bean) {
			id = bean.getId();
	        jobName = bean.getJobName();
	        description = bean.getDescription();
	        contactNumber = bean.getContactNumber();
	        email = bean.getEmail();


		}
	   
}
