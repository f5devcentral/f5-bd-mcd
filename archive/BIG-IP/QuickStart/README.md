# BIG-IP

In this architecture we will be deploying several BIG-IPs however it is important to note that with the exception of minor details related to each cloud / On Prem target the set up remains the same. I will cover the per cloud differences in a separate section of the repo. In-line links to those can be found below. 

Here we will be covering our on premises deployments as this ironically while not complicated has the greater number of steps to deploy

To begin will will need to download the bits for a BIG-IP VE, provision the BIG-IP, acquire a license, and apply it to the BIG-IP.

## Complete the following steps
### On Premises
Create a VM or physical machine with the following minimum specs. or import an existing disk image and give it the following CPU and memory.

- 4 CPU
- 16 GiB of Ram

#### Download BIG-IP VE

For our on-prem environments we will be using version 13 to begin with even though the current version is 14.

- In a browser go to [Downloads F5](https://downloads.f5.com/esd/productlines.jsp "Download BIG-IP VE")
- You will need a login account to access here simply follow the prompts to set one up
- Select the "BIG-IP v13.x / Virtual Edition" link then the "Virtual-Edition" link near the bottom.
- Choose the download most appropriate to your on prem infrastructure for our RHV deployment I used "BIGIP-13.1.1-0.0.4.LTM.qcow2.zip"
- From the next screen select the download location closest to your geographical location. 

This will download the .zip containing the bits for our BIG-IP VE

#### Deploy BIG-IP VE

The instructions below are a highly condensed version of what can be found in the guide below. Follow the step by step instructions on pages 9 and 10 only.
-  [BIG-IP®
 Virtual Edition and Linux KVM:
Setup](https://support.f5.com/content/kb/en-us/products/big-ip_ltm/manuals/product/bigip-ve-setup-linux-kvm-13-1-0/_jcr_content/pdfAttach/download/file.res/BIG-IP_Virtual_Edition_and_Linux_KVM__Setup.pdf) 

- Deploy the "BIGIP-13.1.1-0.0.4.LTM.qcow2.zip" image into your RedHat Virtualization Environment or a similar environment of your choosing.
- Make the appropriate adjustments to the image and ensure it is set up with the proper networking components in your VM solution.
- Use BIG-IP Configuration utility tool to set management IP address

#### Licensing the BIG-IP

It is recommended that you contact your regional F5 sales team to acquire the number of 30 - 45 day licenses needed to set this up. Unless you already have BIG-IP's available to use.

Once you have the licensing informatoin just follow the instructions below.

- Login to the management portal

### Cloud Specific Configuration Differentials
- [Amazon Web Services](https://github.com/f5devcentral/f5-bd-mcd/blob/master/BIG-IP/QuickStart/CloudSpecificConfig/AWS.md)
- [Microsoft Azure](https://github.com/f5devcentral/f5-bd-mcd/blob/master/BIG-IP/QuickStart/CloudSpecificConfig/Azure.md)
- [Google Cloud Platform](https://github.com/f5devcentral/f5-bd-mcd/blob/master/BIG-IP/QuickStart/CloudSpecificConfig/GCP.md)
- [The IBM Cloud](https://github.com/f5devcentral/f5-bd-mcd/blob/master/BIG-IP/QuickStart/CloudSpecificConfig/IBM.md)

