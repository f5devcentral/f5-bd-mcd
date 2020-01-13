# Setting up the Git repo

## Purpose
In order for this architecture to work properly it requires a code repository stored in some iteration of git. For this example we are using GitHub due to its ease of use and high availability.

## Setup and Installation

- Fork the repo from the location below
  - [F5BD-MCD](https://github.com)
- Clone the forked repo to your bastion host, CLI is below
- It is recommended that all work is done out of this repository
- We strongly recommend that you ensure that your gitignore file is properly ignoring the files that contain credential and key information.

note: A sample gitignore file is included, however it is best to double check prior to pushing any changes from your local repo to the one contained on GitHub.

### CLI
The following commands are examples of how to pull down the code to a local machine so we can alter the credential variables as well as other files safely. The codes working directory can live anywhere we will be using it to update files in the public repo.

```
mkdir github
git clone https://github.com/f5devcentral/f5-bd-mcd.git
```
## Understanding the Variable files
There are two files that are integral to the functionality of this architecture the "common.yaml" and "appStates.requested.yaml"

- [common.yaml](../src/publication/vars/common.yaml.example)
  - This file contains all the credential information for accessing OpenShift, BIG-IP, as well as the IP addresses of all the systems needed for this automation to work. The file is well commented so have a look and what goes where should be very clear.

- [appStates.requested.yaml](../src/publication/vars/appStates.requested.yaml)
  - This file contains all the variables associated with manipulation and publication of the demo applications. The names of the each of the settings are self explanatory.

NOTICE: These two file are critical for the use case to function properly, it is essential that they be filled out with the correct information.

### [Return to Index](README.md)

## Notes
This example is using the Bastion host we set up earlier however if you decided to do this elsewhere using a code editor or an IDE that should work fine.