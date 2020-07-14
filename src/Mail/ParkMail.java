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
 * �۽��ڰ� �����Ǿ��ִ� ���� ��ü��.
 * Ŭ���� ��ü�� �Ҵ��ϸ� �����ڿ��� �۽��ڸ� �����Ѵ�.
 * ���� �۽��ڸ� ���� �ϴ� �޼ҵ带 �����ϸ�ȴ�.
 * 
 * ��ü �����Ŀ�  sendMail �޼ҵ忡
 * [�������ּ�:receiveAdress],[���� ����: title], [���� ���� : content] ��
 * �Է��Ͽ� ȣ���ϸ� ������ ��������.
 * ���� ���� �� ���� Console ���� ������ ��µȴ�.  
*/

public class ParkMail {
	final static String FixedMsg  = "====== Hello this is Park Lab =====\n";
	// �Է��� �޽��� ���뿡 �߰� �� ���� ����
	
	
	InternetAddress sendor;
	// �۽���
	
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
		// ���� �۽��� ���� �����͸� �����Ѵ�.
		// stmp ������ ȣ��Ʈ�� gmail ��Ʈ ���� �����Ѵ�.
		
		String sendorName = "Park";
		String charSet = "UTF-8";
		
		//Authenticator auth = new ParkMailAuth();
		// Authenticator �� ��Ʈ��ũ�� �����ϱ����� �ʿ��� ������ ����ϱ� ���� ��ü��.
		// ���ʿ����� ��ȣ���������� ȣ���Ѵ�.
		
		Authenticator auth = new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("take6948@gmail.com", "lsnjfjbnmibbjdak");
			}
		};
		Session session = Session.getDefaultInstance(prop, auth);
		// Session Ŭ������ JavaMail API �� ���õ� ��� �۾��� ó���ϱ� ���� �ʿ��� Ŭ�����̴�.
		// SMTP �� ���õ� ������ �����ϱ����� SMTP�� ���õ� ������ �����ؾ��Ѵ�.
		
		
		msg = new MimeMessage(session);
		// Message Class �� ����ϴ� Ŭ���� , �پ��� Mime Ÿ���� ���� �ϱ⶧��.
		// �ش� Ŭ�������� �����»��, �޴»��, ����, ����� ���� ���ϰ��� ������ �����Ѵ�.
		
		
		try {
			
			
			//sendor = new InternetAddress();
			
			sendor = 
					new InternetAddress(
							
					new String(
					sendorName.getBytes(charSet), "8859_1")
					+ "take6948@gmail.com"
					
							);
			// �۽��� ������ ���� Ŭ����
			
			msg.setFrom(sendor);
			// �۽��ڸ� �����Ѵ�.	
		}
		catch (AddressException adress_E) {
			// �ּ� ���Է� ���� ó��
			JOptionPane.showMessageDialog(
					null, 
					"Please input Adress", 
					"Input Mail Adress",
					JOptionPane.ERROR_MESSAGE );
			adress_E.printStackTrace();
		
		}
		
		catch (MessagingException msg_E) {
			// �޽��� �̻�  ���� ó��
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
				// �����ڸ� �����Ѵ�.
				
				
				msg.setSentDate(new Date());
				// Mail �۽� �ð� ����
				
				
				msg.setSubject(title, "UTF-8");
				// ������ ������ �����Ѵ�.
				
				msg.setText(FixedMsg+content,"UTF-8");
				// ������ ������ �����Ѵ�.
				
				Transport.send(msg);
				// �޽��� �۽�
				//System.out.println("SYSTEM : Mail sending done");
				// �۽� �Ϸ��� �޽���
			}
			catch (AddressException adress_E) {
				// �ּ� ���Է� ���� ó��
				JOptionPane.showMessageDialog(
						null, 
						"Please input Adress", 
						"Input Mail Adress",
						JOptionPane.ERROR_MESSAGE );
				adress_E.printStackTrace();
				return false;
			}
			
			catch (MessagingException msg_E) {
				// �޽��� �̻�  ���� ó��
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
