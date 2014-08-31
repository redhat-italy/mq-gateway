# Getting started...

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
