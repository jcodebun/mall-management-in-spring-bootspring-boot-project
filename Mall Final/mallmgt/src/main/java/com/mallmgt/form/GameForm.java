package com.mallmgt.form;

import javax.persistence.Column;
import javax.validation.constraints.NotEmpty;

import com.mallmgt.dto.BaseDTO;
import com.mallmgt.dto.GameDTO;
import com.mallmgt.dto.MovieDTO;
import com.mallmgt.utility.DataUtility;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class GameForm extends BaseDTO {
	
	@NotEmpty(message = "GameName is required")
	private String gameName;
	
	@NotEmpty(message = "PricePerHour is required")
	private String pricePerHour;
	
	@NotEmpty(message = "Instrcutions is required")
	private String instructions;
	
public GameDTO getDTO() {		
	GameDTO bean=new GameDTO();		
		bean.setId(id);
	    bean.setGameName(gameName);
	    bean.setPricePerHour(DataUtility.getLong(pricePerHour));
	    bean.setInstructions(instructions);
		return bean;
	}

	public void populate(GameDTO bean) {
		id = bean.getId();
		gameName=bean.getGameName();
		pricePerHour = DataUtility.getStringData(bean.getPricePerHour());
		instructions = bean.getInstructions();
	}


}
