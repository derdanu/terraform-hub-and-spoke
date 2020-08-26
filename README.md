# Hub and Spoke Reference Architecture on Azure

Complete Tutorial available on [Azure Docs](https://docs.microsoft.com/de-de/azure/developer/terraform/hub-spoke-introduction)

## VM IPs

|IP| |
|-|-|
|10.0.0.68|Hub Jumpbox|
|10.0.0.36|Hub NVA|
|10.1.0.68|Spoke 1 VM|
|10.2.0.68|Spoke 2 VM|

## Network Diagram

Please note the NVA for Spoke transient routing is missing in the HUB VNet.
You can log into the On-Prem VM (terraform output) and you should be able to ping all the VMs

![Azure Hub and Spoke](https://docs.microsoft.com/de-de/azure/developer/terraform/media/hub-and-spoke-tutorial-series/hub-spoke-architecture.png)
