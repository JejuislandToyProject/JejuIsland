package com.kgitbank.jeju.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class User {
	private Integer user_id;
    private String nick_name;
    private String social_login_id;
}
