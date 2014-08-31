# MQ Gateway example

The Gateway provides a service for discovery, load balancing and failover of services running within a Fabric8. 
For messaging clients with A-MQ using any protocol (OpenWire, STOMP, MQTT, AMQP or WebSockets) they can discover and connect to the right broker letting the gateway deal connection management and proxy requests to where the services are actually running.
See more information on the official documnetation
* [MQ Gateway documentation] (http://fabric8.io/gitbook/gateway.html)

This simple example deploys a Standalone AMQ broker and a default MQ Gateway.
The MQ Gateway listens on 61616 port and is able to detect protocol and proxy every request on the real services.
To test the gateway you can use any Openwire, MQTT, STOMP or AMQP client and point it to 61616 port.
In the example a STOMP ruby client is provided. 

# Building the code and testing the Gateway

1. Clone this repo  
2. Build and install example into your local maven repo  
`$ mvn clean install`  
4. Launch JBoss Fuse ESB 
`$ $FUSE_HOME/bin/start`
`$ $FUSE_HOME/bin/client`
5. Run Karaf installer from Karaf console  
`shell:source mvn:it.redhat.quickstarts.mqgateway/installer/1.0-SNAPSHOT/karaf/installer`  
6. Wait for containers to successfully provision  
7. Go in the stomptest directory and run in two different terminals the ruby stompcat client
8. Run the STOMP ruby producer
`$ cat | ./catstomp`
9. Run the STOMP ruby consumer 
`$ stompcat`
10. type a message in the STOMP producer and observe the STOMP consumer. 
11. Use hawt.io to observe the Gateway detecting the protocol and redirecting the traffic to the proper endpoint 

# Thanks to
* [James Rawlings fuse example] (https://github.com/rawlingsj/fuse-fabric-mq-example)
