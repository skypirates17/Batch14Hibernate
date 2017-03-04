package com.batch.fourteen.utils;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.batch.fourteen.dao.MessageDao;
import com.batch.fourteen.model.Message;
import com.batch.fourteen.model.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:dispatcher-servlet.xml")
public class XMLParser {

	private final static Logger logger = Logger.getLogger(XMLParser.class);

	static List<Message> sample = new ArrayList<Message>();
	Message sampleMap = new Message();
	
	@Autowired
	MessageDao messageDao;
	
	@Test
	public void some() {
		new XMLParser().parseUsersXML();
		
		for (Message map : sample) {
			//messageDao.insertMessage(map);
			logger.debug("(" + map.getIdFrom() +","+map.getIdTo()+",'"+map.getMessage().replaceAll("'", "''")+"')," );
		}
		
	}
	
	public static void main(String[] args) {
		new XMLParser().parseUsersXML();
		
		for (Message map : sample) {
			//messageDao.insertMessage(map);
			System.out.println("(" + map.getIdFrom() +","+map.getIdTo()+",'"+map.getMessage().replaceAll("'", "''").replaceAll("\n", "")+"')," );
		}
	}
	

	public List<User> parseUsersXML() {
		List<User> lstUsers = new ArrayList<>();

		try {
			InputStream in = XMLParser.class.getResourceAsStream("/Users.xml");

			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(in);

			doc.getDocumentElement().normalize();
			NodeList nList = doc.getElementsByTagName("batch");

			for (int temp = 0; temp < nList.getLength(); temp++) {
				Node nNode = nList.item(temp);

				if (nNode.getNodeType() == Node.ELEMENT_NODE) {
					Element eElement = (Element) nNode;
					User user = new User();
					//sampleMap = new HashMap<>();
					
					user.setId(eElement.getAttribute("id"));
					user.setIp(eElement.getAttribute("ip"));
					user.setPcName(eElement.getAttribute("pcname"));
					user.setName(eElement.getElementsByTagName("name").item(0).getTextContent());
					user.setNickName(eElement.getElementsByTagName("nickname").item(0).getTextContent());
					user.setEmail(eElement.getElementsByTagName("email").item(0).getTextContent());
					user.setPicFileName(eElement.getElementsByTagName("picfilename").item(0).getTextContent());
					//user.setMessages(this.parseMessageXML(eElement.getAttribute("id")));

					//logger.debug("======================="+eElement.getAttribute("id")+"=======================");
					//sampleMap.put("IDFROM", eElement.getAttribute("id"));
					this.parseMessageXML(eElement.getAttribute("id"));
					
					
					
					lstUsers.add(user);
				}
			}
		} catch (Exception e) {
			logger.debug("Error while parsing xml for Users : " + e);
			e.printStackTrace();
		}
		return lstUsers;
	}

	private List<Message> parseMessageXML(String id) {
		List<Message> messages = new ArrayList<>();

		try {
			InputStream in = XMLParser.class.getResourceAsStream("/Messages.xml");

			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(in);

			doc.getDocumentElement().normalize();
			NodeList nList = doc.getElementsByTagName("messages");

			for (int temp = 0; temp < nList.getLength(); temp++) {
				Node nNode = nList.item(temp);

				if (nNode.getNodeType() == Node.ELEMENT_NODE) {
					Element eElement = (Element) nNode;

					String elementId = (String) eElement.getAttribute("id");
					if (elementId != null && id != null && elementId.equalsIgnoreCase(id)) {
						
						
						NodeList nLMessages = eElement.getElementsByTagName("message");
						for (int i = 0; i < nLMessages.getLength(); i++) {
							Message message = new Message();
							Node nMessage = nLMessages.item(i);

							if (nMessage.getNodeType() == Node.ELEMENT_NODE) {
								Element eElement2 = (Element) nMessage;
								sampleMap = new Message();
								
								//message.setId(eElement2.getAttribute("id"));
								//message.setMessage(eElement2.getTextContent());
								//logger.debug(eElement2.getAttribute("id") +"-->"+ eElement2.getTextContent());
								sampleMap.setIdTo(Integer.valueOf(Util.toString(eElement.getAttribute("id"),true)));
								sampleMap.setIdFrom(Integer.valueOf(Util.toString(eElement2.getAttribute("id"),true)));
								sampleMap.setMessage(eElement2.getTextContent());
								//User user = this.getUserInfo(message.getId());
								//message.setName(user.getName());
								//message.setPicFileName(user.getPicFileName());
								sample.add(sampleMap);
							}
							messages.add(message);
						}

						
					}
				}
			}
		} catch (Exception e) {
			logger.debug("Error while parsing xml for Messages : " + e);
			e.printStackTrace();
		}
		
		Collections.shuffle(messages);
		return messages;
	}
	
	private User getUserInfo(String id) {
		User user = new User();
		try {
			InputStream in = XMLParser.class.getResourceAsStream("/Users.xml");

			DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
			Document doc = dBuilder.parse(in);

			doc.getDocumentElement().normalize();
			NodeList nList = doc.getElementsByTagName("batch");

			for (int temp = 0; temp < nList.getLength(); temp++) {
				Node nNode = nList.item(temp);

				if (nNode.getNodeType() == Node.ELEMENT_NODE) {
					Element eElement = (Element) nNode;
					
					String elementId = (String) eElement.getAttribute("id");
					if (elementId != null && id != null && elementId.equalsIgnoreCase(id)) {
						user.setName(eElement.getElementsByTagName("name").item(0).getTextContent());
						user.setPicFileName(eElement.getElementsByTagName("picfilename").item(0).getTextContent());
						return user;
					}
				}
			}
		} catch (Exception e) {
			logger.debug("Error while parsing xml for Single User : " + e);
			e.printStackTrace();
		}
		return user;
	}
}
