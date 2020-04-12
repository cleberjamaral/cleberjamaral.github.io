# Apache Camel

### Sending email \(gmail\) by camel routes

1. Enable [gmail app passwords](https://support.google.com/accounts/answer/185833). 
   1. Enable [2-step-verification](https://support.google.com/accounts/answer/185839) \(following verification through SMS\).
   2. Generate a password for the camel app \(selecting app "Mail" and a device type or custom\). It will venerate a 16 characters password for the camel app.
2. Make sure the app is set up for [camel-mail](https://camel.apache.org/components/latest/mail-component.html) component.
3. Set up a camel route 
   1. Set the consumer side \('from' of camel route\).
   2. Set a message subject, recipient and body.
   3. Set the producer side \(mail following [gmail smtp configuration](https://support.google.com/mail/answer/7126229)\).
      1. Use secure smtp on port 465 \(smtps://smtp.gmail.com:465\).
      2. Set the username as a valid gmail address \(ex: username=myuser@gmail.com\).
      3. Set the 16 characters generated app password \(ex: password=abcd1234abcd5678\).
      4. Set smtp authentication \(mail.smtp.auth=true\).
      5. Set STARTTLS as enabled \(mail.smtp.starttls.enable=true\).

Example:

```text
<routes xmlns="http://camel.apache.org/schema/spring" >
        <route id="sendMail">
                <from uri="jason:toEmail" />
                <setBody>
                        <!-- remove quotes -->
                        <simple>${body.replaceAll("\u0022","")}</simple>
                </setBody>
                <setHeader headerName="Subject">
                        <simple>${in.body}</simple>
                </setHeader>
                <setHeader headerName="To">
                        <constant>recipient@gmail.com</constant>
                </setHeader>
                <setBody>
                        <simple>${in.body}\nHi, Some message.\n</simple> 
                </setBody> 
                
                <!-- gmail configuration -->
                <to uri="smtps://smtp.gmail.com:465?username=myuser@gmail.com&password=abcd1234abcd5678&debugMode=true&mail.smtp.auth=true&mail.smtp.starttls.enable=true"/> 
        </route>  
</routes>
```

