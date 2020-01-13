# BIG-IP

F5 BIG-IP VEs are what will be used to manage DNS requests, Handle global server load balancing and to manage the local traffic for our individual OpenShift clusters in each cloud environment.

This architecture uses one BIG-IP VE to manage DNS, primarily because it is a POC level architecture. In a production grade architecture you would want to have a minimum of two BIG-IP VEs to manage DNS in separate DCs to allow for high availability.

Setup and configuration for the BIG-IPs is simple. It only requires deploying the VE in each environment and applying a license. The rest of the configuration is handled by our Ansible Playbooks.

You can begin [HERE](https://github.com/f5devcentral/f5-bd-mcd/tree/master/BIG-IP/QuickStart "BIG-IP - QuickStart") 