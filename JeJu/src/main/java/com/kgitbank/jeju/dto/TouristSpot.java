package com.kgitbank.jeju.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class TouristSpot {
	
	private int tourist_spot_id;
	private String name;
	private String user_id;
	private String nick_name;
	private String title;
	private String image;
	private String description;
	private String hashtag;
	private String address;
	private String location;
	private int positive_num;
	private int nagative_num;
	private String type;
	
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy/MM/dd")
	private Date registration_time;
}
