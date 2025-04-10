package DTO;

import lombok.*;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class UserInfoDto {
	private int userId; // autoIncrement
	private String name;
	private String id; // 실제 사용자 아이디
	private String pw;
	private int age;
	private char sex;
	// private String phone;
}
