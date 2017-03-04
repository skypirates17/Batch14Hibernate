package com.batch.fourteen.service.impl;

import java.io.UnsupportedEncodingException;
import java.util.Date;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.batch.fourteen.model.User;
import com.batch.fourteen.pojo.OutingForm;
import com.batch.fourteen.service.IEmailService;
import java.util.Properties;

import javax.mail.BodyPart;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

@Service
public class EmailService implements IEmailService {

	private final static Logger logger = Logger.getLogger(EmailService.class);
	private final String HOST = "mailsrv01.domain.aeoncredit.com.ph";
	private final String SMTP = "192.168.100.125";
	private final String SUBJECT = "Batch 2nd Anniversary";

	@Override
	public void sendEmail(User user, OutingForm outingForm) throws MessagingException, UnsupportedEncodingException {
		logger.debug(user.toString());
		logger.debug(outingForm.toString());

		// send email
		Properties properties = System.getProperties();

		properties.put("mail.smtp.localhost", HOST);
		properties.put("mail.smtp.host", SMTP);
		properties.put("mail.debug", true);
		properties.put("mail.debug.auth", true);

		Session session = Session.getInstance(properties, null);
		session.setDebug(true);

		MimeMessage message = new MimeMessage(session);
		message.setSubject(SUBJECT, "utf-8");
		message.setFrom(new InternetAddress(user.getEmail(), user.getName()));
		message.setSentDate(new Date());

		BodyPart messageBodyPart = new MimeBodyPart();
		messageBodyPart.setContent(this.setTable(outingForm), "text/html; charset=utf-8");
		logger.debug(this.setTable(outingForm));
		Multipart multipart = new MimeMultipart();
		multipart.addBodyPart(messageBodyPart);
		message.setContent(multipart);
		
		message.addRecipient(RecipientType.TO, new InternetAddress(""));
		logger.debug("Sending Email from " + user.getEmail() +" to "+ "");
		
	}
	
	private String setTable(OutingForm outingForm) {
		StringBuilder sb = new StringBuilder();

		sb.append("<table style='border-collapse: collapse; border: 1px solid rgb(191,191,191);font-family:Cambria; font-size:12px;'>");

		sb.append("<tbody>");
		sb.append("<tr>");
		sb.append("<td style=' padding: 5px;border: 1px solid rgb(191,191,191);background-color:rgb(217,217,217);'><b>Name nya dw<b></td>");
		sb.append("<td style=' padding: 5px;border: 1px solid rgb(191,191,191);'>"+outingForm.getFullName()+"</td>");
		sb.append("</tr>");
		
		sb.append("<tr>");
		sb.append("<td style=' padding: 5px;padding: 5px;border: 1px solid rgb(191,191,191);background-color:rgb(217,217,217);'><b>Place(s) I want to visit in Antipolo<b></td>");
		String antipolo = "";
		for (int i = 0; i < outingForm.getAnswerAntipolo().size(); i++) {
			antipolo += outingForm.getAnswerAntipolo().get(i) + "<br>";
		}
		sb.append("<td style=' padding: 5px;border: 1px solid rgb(191,191,191);'>"+antipolo+"</td>");
		sb.append("</tr>");
		
		sb.append("<tr>");
		sb.append("<td style=' padding: 5px;border: 1px solid rgb(191,191,191);background-color:rgb(217,217,217);'><b>Pupunta ba ko?<b></td>");
		sb.append("<td style=' padding: 5px;border: 1px solid rgb(191,191,191);'>"+outingForm.getAnswerOuting()+"</td>");
		sb.append("</tr>");
		
		sb.append("<tr>");
		sb.append("<td style=' padding: 5px;border: 1px solid rgb(191,191,191);background-color:rgb(217,217,217);'><b>Message<b></td>");
		sb.append("<td style=' padding: 5px;border: 1px solid rgb(191,191,191);'>"+outingForm.getMessage()+"</td>");
		sb.append("</tr>");
		
		sb.append("</tbody>");
		sb.append("</table>");

		return sb.toString();
	}


}
