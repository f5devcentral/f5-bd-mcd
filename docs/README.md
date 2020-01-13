# F5 Multi-Cluster Container Ingress Services - Getting Started

## Summary
The following task will guide you though the creation of a fully functional multi-cluster setup. With this setup you will be able to demonstrate a an A/B Deployment scenario designed to support version to version upgrade as well as fall back and fail over scenarios.  At core it is designed for the later tasks, however it should be noted that several of the Jenkins jobs could be used independently or altered to achieve an alternative task.

### End To End Architecture
![E2E Architecture](/docs/images/e2e.png)

## Setup and Configuration
Follow the links below in order to begin setup and configuration.

1. [Setting up the Bastion host](bastion.md)
2. [Setting up the Git repo](git.md)
3. [Setting up the Testing Application(s)](testapps.md)
4. [Setting up the Jenkins Jobs](jenkins.md)
5. [Building and Running the A/B Deployment Use Case](usecases.md)
6. [Troubleshooting and FAQ](troubleshooting.md)

## Notes
Please note that if all of the perquisites from the main readme page have not yet been configured please return to that page until they have been completed.

## Support

This project is a community effort to promote container ingress service automation and is maintained by F5 BD. For any feature requests or issues, feel free to open an issue and we will give our best effort to address it.