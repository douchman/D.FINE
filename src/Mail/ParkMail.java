package Mail;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.swing.JOptionPane;


/*
 * 송신자가 고정되어있는 메일 객체다.
 * 클래스 객체를 할당하면 생성자에서 송신자를 설정한다.
 * 따로 송신자를 설정 하는 메소드를 마련하면된다.
 * 
 * 객체 생성후에  sendMail 메소드에
 * [수신자주소:receiveAdress],[메일 제목: title], [메일 내용 : content] 을
 * 입력하여 호출하면 메일이 보내진다.
 * 메일 전송 후 에는 Console 에서 문구가 출력된다.  
*/

public class ParkMail {
	final static String FixedMsg  = "====== Hello this is Park Lab =====\n";
	// 입력할 메시지 내용에 추가 될 고정 문구
	
	
	InternetAddress sendor;
	// 송신자
	
	MimeMessage msg;
	
	public ParkMail() {
		Properties prop = new Properties();
		prop.put("mail.transport.protocol", "smtp");
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", "465");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.starttls.enable","true");
		prop.setProperty("mail.smtp.socketFactory.class", 
				"javax.net.ssl.SSLSocketFactory");
		prop.put("mail.smtp.user","take6948@gmail.com");
		// 메일 송신자 관련 데이터를 설정한다.
		// stmp 서버의 호스트와 gmail 포트 등을 설정한다.
		
		String sendorName = "Park";
		String charSet = "UTF-8";
		
		//Authenticator auth = new ParkMailAuth();
		// Authenticator 는 네트워크에 접속하기위해 필요한 인증을 취득하기 위한 객체다.
		// 이쪽에서는 암호인증을위해 호출한다.
		
		Authenticator auth = new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("take6948@gmail.com", "lsnjfjbnmibbjdak");
			}
		};
		Session session = Session.getDefaultInstance(prop, auth);
		// Session 클래스는 JavaMail API 와 관련된 모든 작업을 처리하기 위해 필요한 클래스이다.
		// SMTP 와 관련된 세선을 생성하기위해 SMTP와 관련된 정보를 지정해야한다.
		
		
		msg = new MimeMessage(session);
		// Message Class 를 상속하는 클래스 , 다양한 Mime 타입을 지원 하기때문.
		// 해당 클래스에는 보내는사람, 받는사람, 제목, 내용과 같은 메일관련 내용을 지정한다.
		
		
		try {
			
			
			//sendor = new InternetAddress();
			
			sendor = 
					new InternetAddress(
							
					new String(
					sendorName.getBytes(charSet), "8859_1")
					+ "take6948@gmail.com"
					
							);
			// 송신자 설정을 위한 클래스
			
			msg.setFrom(sendor);
			// 송신자를 설정한다.	
		}
		catch (AddressException adress_E) {
			// 주소 미입력 오류 처리
			JOptionPane.showMessageDialog(
					null, 
					"Please input Adress", 
					"Input Mail Adress",
					JOptionPane.ERROR_MESSAGE );
			adress_E.printStackTrace();
		
		}
		
		catch (MessagingException msg_E) {
			// 메시지 이상  오류 처리
			JOptionPane.showMessageDialog(
					null, 
					"Please input Mail correctly", 
					"Error!", 
					JOptionPane.ERROR_MESSAGE);
			msg_E.printStackTrace();	
		}
		catch (UnsupportedEncodingException e) {
			e.printStackTrace();		
		}
		
	}
	

	public boolean sendMail(String receiveAdress,String title, String content) {
			try {
				//InternetAddress receiver = new InternetAddress(receiveAdress);
				msg.setRecipients(Message.RecipientType.TO, 
						InternetAddress.parse(receiveAdress));
				// 수신자를 설정한다.
				
				
				msg.setSentDate(new Date());
				// Mail 송신 시간 설정
				
				
				msg.setSubject(title, "UTF-8");
				// 메일의 제목을 설정한다.
				
				msg.setText(FixedMsg+content,"UTF-8");
				// 메일의 내용을 설정한다.
				
				Transport.send(msg);
				// 메시지 송신
				//System.out.println("SYSTEM : Mail sending done");
				// 송신 완료후 메시지
			}
			catch (AddressException adress_E) {
				// 주소 미입력 오류 처리
				JOptionPane.showMessageDialog(
						null, 
						"Please input Adress", 
						"Input Mail Adress",
						JOptionPane.ERROR_MESSAGE );
				adress_E.printStackTrace();
				return false;
			}
			
			catch (MessagingException msg_E) {
				// 메시지 이상  오류 처리
				JOptionPane.showMessageDialog(
						null, 
						"Please input Mail correctly", 
						"Error!", 
						JOptionPane.ERROR_MESSAGE);
				msg_E.printStackTrace();	
				return false;
			}	
			return true;
	}
}
