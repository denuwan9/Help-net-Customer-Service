package helpnet;

public class inquiry {
	private int inqNo;
	private String name;
	private String email;
	private String message;
	
	
	public inquiry(int inqNo, String name, String email, String message) {
		this.inqNo = inqNo;
		this.name = name;
		this.email = email;
		this.message = message;
	}


	public int getInqNo() {
		return inqNo;
	}


	public String getName() {
		return name;
	}


	public String getEmail() {
		return email;
	}


	public String getMessage() {
		return message;
	}


}
