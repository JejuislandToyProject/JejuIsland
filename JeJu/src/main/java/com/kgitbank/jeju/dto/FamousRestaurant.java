package com.kgitbank.jeju.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class FamousRestaurant {
	private Integer famous_restaurant_id;
	private String name;
	private String user_id;
	private String nickname;
	private String title;
	private String image;
	private String description;
	private String hashtag;
	private String address;
	private String location;
	private Integer positive_num;
	private Integer negative_num;
	private String type;
	private Date registration_time;
	
}
