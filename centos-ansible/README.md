# CentOS with packages for Ansible
This template uses the Azure Linux CustomScript extension to deploy a CentOS and the required packages (epel-release python-keyczar) for Ansible.



| Deploy to Azure  | Author                          | Template Name   | Description     |
|:-----------------|:--------------------------------| :---------------| :---------------|
| <a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fkenrward%2FAzure-Templates%2Fmaster%2Fcentos-ansible%2Fazuredeploy.json" target="_blank"><img src="http://azuredeploy.net/deploybutton_small.png"/></a> | [kenrward](https://github.com/kenrward) | [Deploy CentOS for Ansible](https://github.com/kenrward/Azure-Templates/tree/master/centos-image-server-web) | This template uses the Azure Linux CustomScript extension to deploy a CentOS and the required packages (epel-release python-keyczar) for Ansible. |
## Parameters
| Name                            | Type           |
|:--------------------------------|:---------------|
| prefixName                      | String         |                       
| storageAccountName              | String         |                   
| project                         | String         |                     
| location                        | String         |                    
| adminUsername                   | String         |                      
| adminPassword                   | SecureString   |                         
| sshKeyData                      | String         | 
| dnsNameForPublicIP              | String         |                     
| vmSize                          | String         |                     
| imageSKU                        | String         |                      