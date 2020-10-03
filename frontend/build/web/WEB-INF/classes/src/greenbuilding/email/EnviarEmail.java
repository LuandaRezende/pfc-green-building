package greenbuilding.email;

import greenbuilding.model.entity.Usuario;
import java.util.Properties;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EnviarEmail {

    public static void enviarEmail(String email, String senha) {

        Properties props = new Properties();
        /**
         * Parâmetros de conexão com servidor Gmail
         */
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");

        Session session = Session.getDefaultInstance(props,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("admgreenbuilding@gmail.com", "greenbuilding123");
            }
        });

        /**
         * Ativa Debug para sessão
         */
        session.setDebug(true);

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("admgreenbuilding@gmail.com")); //Remetente

            Address[] toUser = InternetAddress //Destinatário(s)
                    .parse(email);

            message.setRecipients(Message.RecipientType.TO, toUser);
            message.setSubject("Solicitação de senha");//Assunto
                        message.setText("Olá!\n"
     + "Você solicitou a recuperação de sua senha! Sua senha é "+ senha +"\n"
             + "Caso não seja você, ignore esse email.");

            /**
             * Método para enviar a mensagem criada
             */
            Transport.send(message);

            System.out.println("Feito!!!");

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        
        
    }
    
//        public String gerarToken(){
//        
//        Random rand = new Random();
//        String token = String.valueOf(Long.toHexString(rand.nextLong())).substring(0, 8);
//        return token;
//    }


}

