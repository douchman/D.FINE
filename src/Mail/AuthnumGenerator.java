package Mail;

import java.util.Random;

public class AuthnumGenerator {
		Random ran;
		
		public AuthnumGenerator() {
			ran = new Random();
		}
		
		public String getAuthNum() {
		
			return Integer.toString((ran.nextInt(999999) +111111));
		}
}
