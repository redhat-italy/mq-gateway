#!/bin/bash
if [ -z $AMQ_HOME ] 
then
  AMQ_HOME=/opt/jboss-a-mq-6.1.0.redhat-379/
fi
if [ -z $OPENWIRE_PORT ] 
then
  OPENWIRE_PORT=61616
fi  
java -jar $AMQ_HOME/extras/mq-client.jar producer --destination queue://testQueue --count 5000 --brokerUrl tcp://localhost:$OPENWIRE_PORT --user admin --password admin  
