package Apple.util;


import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Store;

public class SendPopMails {

   public static void check(String host, String storeType, final String user,
      final String password) 
   {
      try {

      // create properties field
      Properties properties = new Properties();

      properties.put("mail.pop3s.host", host);
      properties.put("mail.pop3s.port", "995");
      properties.put("mail.pop3s.starttls.enable", "true");

      // Setup authentication, get session
      Session emailSession = Session.getInstance(properties,
         new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
               return new PasswordAuthentication(
                  user , password);
            }
         });
      // emailSession.setDebug(true);

      // create the POP3 store object and connect with the pop server
      Store store = emailSession.getStore("pop3s");

      store.connect();

      // create the folder object and open it
      Folder emailFolder = store.getFolder("INBOX");
      emailFolder.open(Folder.READ_ONLY);

      // retrieve the messages from the folder in an array and print it
      Message[] messages = emailFolder.getMessages();
      System.out.println("messages.length---" + messages.length);

      for (int i = 0, n = messages.length; i < n; i++) {
         Message message = messages[i];
         System.out.println("---------------------------------");
         System.out.println("Email Number " + (i + 1));
         System.out.println("Subject: " + message.getSubject());
         System.out.println("From: " + message.getFrom()[0]);
         System.out.println("Text: " + message.getContent().toString());
      }

      // close the store and folder objects
      emailFolder.close(false);
      store.close();

      } catch (NoSuchProviderException e) {
         e.printStackTrace();
      } catch (MessagingException e) {
         e.printStackTrace();
      } catch (Exception e) {
         e.printStackTrace();
      }
   }

   public static void main(String[] args) {

      String host = "pop.gmail.com";// change accordingly
      String mailStoreType = "pop3";
      String username = "apple@shanni.in";// change accordingly
      String password = "Open,,03";// change accordingly

      check(host, mailStoreType, username, password);

   }

}
