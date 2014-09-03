AMQ_HOME=/opt/jboss-a-mq-6.1.0.redhat-379/
java -jar $AMQ_HOME/extras/mq-client.jar consumer --destination queue://testQueue --count 5000 --brokerUrl tcp://localhost:61616 --user admin --password admin  
