# SRE-Internet-Troubleshooting 🕵🏾‍♂️

Internet connection downtime happens often. The goal is to minimize the blast radius by making sure other services are not impacted by system downtime, checking logs are crucial. Logs will help you determine what services are impacted and the type of error that occuring. The next priority is to reestablish connection to reduce downtime, followed by a post-mortem to determine the root cause analysis and how the error can prevented in the future. 

4 stage Cloud Security incident response 

- Preperation 
- Detection and analysis
- Containment of the blast radius and erradication
- Post incident activity

Internet Layers 🎛️
Layer              Command 

Device             ifconfig, ipconfig 
Local Network      ping gateway
Internet           ping internet 
DNS                nslookup, host, dig 
Application        curl 
