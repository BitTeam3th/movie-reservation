package dto;

import java.io.Serializable;
/**
 * 사용자 정보 DTO
 * @author BTC-N12
 *
 */
public class UserDto implements Serializable {

	/**
	 * 직렬화
	 */
	private static final long serialVersionUID = -4648077081489178132L;

	private int id;
	private String email; // login id
	private String password;
	private String username;

	public UserDto() {
	}

	public UserDto(int id, String email, String password, String username) {
		this.id = id;
		this.email = email;
		this.password = password;
		this.username = username;
	}

	public UserDto(String email, String password, String username) {
		this.email = email;
		this.password = password;
		this.username = username;
	}
	
	/**
	 * seq를 돌려준다.
	 */
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	/**
	 * 로그인 아이디를 돌려준다.
	 */
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * 비밀번호를 돌려준다.
	 */
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * 사용자 이름을 돌려준다.
	 */
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "UserDto [id=" + id + ", email=" + email + ", password=" + password + ", username=" + username + "]";
	}

}
