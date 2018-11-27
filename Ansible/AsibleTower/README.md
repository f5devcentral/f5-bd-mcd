# Ansible Tower

The steps for setting up Ansible core and Ansible Tower are covered in detail on the Ansible site at this [LINK](https://docs.ansible.com/ "Ansible Documentation Page"). To speed things along for this architecture I have condensed the instructions into just the bare minimum to set up an Ansible Tower server and provided a sample inventory file similar to the one I used in my testing environment.

## Complete the following steps
Set up a VM or physical machine with the following minimum specs.

- 4 CPU
- 16 GiB of Ram
- 40 GiB of Storage

Note: this is the minimum required specs. for setting up the Multi-Cloud Demo.  These will of course be much larger in a production environment.

### Pre-Requisites 
- 1 Static IP
- 1 Domain Name 
Note: I am using Active Directory in my environment.

### Red Hat Enterprise Linux Install

This should be pretty straight forward I am not going to go into great detail here as this should be common knowledge.

- Select Language
- Set Time Zone
- Set Install Drive
- Configure Network (static IP & host name)
- Crete a root password
- create an admin user

Optional: I always add my local SSH key and turn off password auth in sshd at this point.

Note: Now would be a good time to add the host name for your ansible tower to your DNS sever. I used our lab active directory for my environment.

### Register the system

```
subscription-manager register
```

Follow the prompts to login with your RedHat account and password. 
You should receive: The system has been registered with ID: ID NUMBER

```
subscription-manager list --available
```

Locate a RedHat Enterprise Linux subscription pool ID for your installation type (vm or physical) copy it and append it to the command below

```
subscription-manager attach --pool=insert pool id here
```

You should receive:  Successfully attached a subscription for: SUBSCRIPTION

Update the OS

```
yum update -y
```

### Installing Ansible Core

Enable the Anisble repo for the system

```
sudo subscription-manager repos --enable rhel-7-server-ansible-2.6-rpms
```
Run the ansible install

```
yum install ansible -y
```

### Install Ansible Tower

This portion of the install will require a license if you do not have one you can request a temporary one from ansible.com.

download tower install - I am using the packaged install from the link below.  I would recommend going to the documentation and downloading the latest revision from [HERE](https://docs.ansible.com/ansible-tower/latest/html/quickinstall/download_tower.html#download-the-tower-installation-program "Download the Tower Installation Program"). 

I used wget which will need to be installed.

```
yum install wget -y
```

Downlod the latest install

```
wget https://releases.ansible.com/ansible-tower/setup/ansible-tower-setup-latest.tar.gz
```
Unzip it

```
tar xvzf ansible-tower-setup-latest.tar.gz
```
Change to the newly created directory, copy and edit the inventory file. I have included a the sample one I used for reference. As you can see all you need to do is add a password in the spots tha say "supersecretpassword"

Run the setup script

```
./setup.sh
```

When the setup is complete you should see a line saying that you have had 0 failed. 
```
PLAY RECAP ******************************************************************************************
localhost                  : ok=142  changed=71   unreachable=0    failed=0
```
Now you can login to the web portal, use the license file to license file and finish logging in to Ansible Tower.

### Tower Install Complete

This completes the Ansible Tower installation. The next steps for building this architecture will be to setup the BIG-IPs and the OpenShift clusters before coming back to Ansible Tower to set up the playbooks for the final configuration run.











    