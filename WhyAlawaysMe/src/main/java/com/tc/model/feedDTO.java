package com.tc.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter

public class feedDTO {
	private int chal_idx ;
	private String chal_title ;
	private String chal_content ;
	private String chal_st_dt ;
	private String chal_ed_dt ;
	private String user_id ;
	private String img ;
}
