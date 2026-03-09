# SRE-Internet-Troubleshooting 🕵🏾‍♂️

Internet connection downtime happens often. The goal is to minimize the blast radius by making sure other services are not impacted by system downtime, checking logs are crucial. Logs will help you determine what services are impacted and the type of error that occuring. The next priority is to reestablish connection to reduce downtime, followed by a post-mortem to determine the root cause analysis and how the error can prevented in the future. 

4 stage Cloud Security incident response 

- Preperation 
- Detection and analysis
- Containment of the blast radius and erradication
- Post incident activity

Internet Troubleshooting Layers 🔌

Layer                What You're Testing            Command

1. Device            Local network interface        ifconfig / ipconfig
2. Local Network     Router / gateway connectivity  ping <gateway>
3. Internet          Raw internet connectivity      ping 8.8.8.8
4. DNS               Name resolution                nslookup, dig, host  google.com
5. Application       Service-level connectivity     curl https://google.com


device: 
ifconfig en0,
ipconfig getifaddr en0

Local Network: 
netstat -nr | grep default. ping gateway after 

Internet: 
ping -c 4 8.8.8.8,
ping -c 3 8.8.8.8

DNS:
nslookup google.com,
dig google.com +short,
host google.com 

Application: 
curl -I https://google.com 
