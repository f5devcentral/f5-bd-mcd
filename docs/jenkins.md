# Setting up the Jenkins Jobs

## Purpose
The Jenkins job exports provided in the git repo help automate the A / B deployment use case we are demonstrating via this architecture. In this setup guide you will import and configure each of the five jobs required for this use case to work properly. You will also set up the required access to git hub and encrypt the variable file where we store access information via Ansible.

## Setup and Installation
### Install Ansible Jenkins plug-in
- Ansible plug-in
  - https://wiki.jenkins.io/display/JENKINS/Ansible+Plugin

### Setting up Authentication

Navigate to the location pictured below

![place holder](/docs/images/credpath.png)

#### GitHub Credentials

![place holder](/docs/images/GHCred.png)


#### Ansible Vault Credentials

![place holder](/docs/images/AVCred.png)

### Downloading and importing Jenkins jobs
- From the root of the local git repo for MCD change directories to the jenkinsjobs directory
```
cd /src/jenkinsjobs
```
- Navigate to the link for the Jenkins java cli tool and grab the url for downloading it. Copy the url to the systems clipboard and paste it in to the following command on the Bastion host.
```
wget [your jenkins server url to the cli tool here]
```
- The java cli tool is save in the same location as the job xml files it is time to import them into Jenkins

List Jobs
```
java -jar jenkins-cli.jar -s http://<YourBuildServer>:<YourBuildServerPort>/ list-jobs
```
Import jobs
```
java -jar jenkins-cli.jar -s http://<YourBuildServer>:<YourBuildServerPort>/ create-job jobname < jobname.xml
```
Complete this step once for each 

### Environment specific job configuration
For each of these jobs you will need to update the Git repo location and specify the credentials. Additionally you will need to validate the the AnsibleVault credentials populated correctly if not update these to match what was configured in the "Setting up Jenkins Authentication section of this guide. The screen capture below show what this should look like when it is properly configured.

Navigate to the location pictured below

![place holder](/docs/images/nav001.png)

![place holder](/docs/images/nav002.png)

- Ensure that each of the section pictured below look correct

![place holder](/docs/images/ansiblecred.png)

![place holder](/docs/images/reposettings.png)

This will need to be completed in the following jobs that were created during the "Downloading and importing Jenkins jobs" section of this guide.

- Show State
- Batched
- Stepped
- Publish
- Unpublish

### [Return to Index](README.md)

## Notes
Once all the above configuration is complete, the next step in the process is to give this a test run by running the "Show State" job. This job polls all the systems involved to get the current state of the A/B deployment. Should anything not be configured correctly it will be reflected in the console output of the job. Troubleshooting this will be covered in the troubleshooting section of the documentation.