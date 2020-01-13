# Setting up the Bastion host

## Purpose
The bastion host is not a requirement for setup and configuration of this environment and it's user cases. It is however recommended if you have equivalent capabilities as all the CLI work related to the Multi-Cluster environment is targeted for Linux. This is not to say it cannot be archived using Windows or Mac OS however these environments will not be detailed in this documentation.

## Setup and Installation

- Create a linux server or client in you virtualization solution this can be done via any virtualization solution locally on in a cluster environment. I used Cent OS v8 running on in my vCenter.
- Once your OS is set up we will need a few tools installed.

## Tools installation
This installs the minimum required items to work with this environment

```
 sudo yum install git wget java-1.8.0-openjdk -y
 sudo yum update -y
```

### Installing the OC CLI tool

- In order to work on the OpenShift server you should install the oc command line tool.

Optional but it keeps things clean
```
mkdir oc
cd oc
```
download the latest OC CLI tool
- https://github.com/openshift/origin/releases/tag/v3.11.0
```
wget -c https://github.com/openshift/origin/releases/download/v3.11.0/openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz
```
untar the file
```
tar -xvf openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit.tar.gz
```
Copy the file to /bin to add it to your systems $PATH
```
cp openshift-origin-client-tools-v3.11.0-0cbc58b-linux-64bit/oc /bin/
```

Check to see it is accessible
```
oc --help
```
You should see help output if it is ready to use .

### Installing Ansible-Vault
This will be needed to encrypt files containing access information that we want to store in the repo safely but allow Jenkins to access on the fly as part of each job. Installation of this differs from OS to OS in this example we are useing CentOS 8 so the following commands with install ansible giving us access to Ansible Vault.

Install the EPEL package
```
sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
```
Install Ansible
```
sudo dnf install ansible
```
Test the installation 
```
sudo ansible-vault --version
```

### Optional Tools and Systems
 
 ```
 sudo yum install cockpit -y
 ```
 ```
 sudo systemctl enable --now cockpit.socket
 ```
 if on CentOS 7, not required for CentOS 8
 ```
 sudo firewall-cmd --add-service=cockpit
 sudo firewall-cmd --add-service=cockpit --permanent
 firewall-cmd --reload
 ```

 ```
 sudo yum update -y
 ```

### [Return to Index](README.md)

## Notes
 This will give you a reasonable complement of tools to work with this environment. Should you discover additional tools feel free to instal them on this Bastion host.

 If you used the F5 Provisioner to deploy the underlying servers for this architecture one bastion host per environment is provided.


