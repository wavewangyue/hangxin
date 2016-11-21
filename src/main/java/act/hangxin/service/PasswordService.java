package act.hangxin.service;

public class PasswordService {
	
	private String passy = "yanfaebd";
	private boolean ans = false;
	private String pass = "";
	
	public PasswordService(String pass0){
		pass = pass0;
		if (passy.equals(pass0)){ 
			ans = true;
		}
		else 
			ans = false;
	}
	
	public boolean getans(){
		return ans;
	}
	
	public String getpass(){
		return pass;
	}
}
