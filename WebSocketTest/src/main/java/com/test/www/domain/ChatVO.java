package com.test.www.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@AllArgsConstructor
@NoArgsConstructor
@Data
public class ChatVO {
	
	//SEQ, MEMBER_SEQ, TEAM_SEQ, CONTENT, REGDATE //name(MEMBER)
	private int seq;
	private int memberSeq;
	private int teamSeq;
	private String content;
	private Date regdate;
	private String name;
}
