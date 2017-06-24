# chef-solo-linux
## Summary
Chef cookbook to install Nginx with Chef Solo on Linux. Demonstrates the use of the following Chef features in the cookbook:
- cookbook_files, 
- attributes,
- templates, and 
- roles.

The commit history goes through the evolution of the cookbook as these features are introduced for educational purposes.

## Running
```shell
sudo chef-solo -c src/solo.rb -o 'recipe[lab]'
```
The Nginx web site is available on port 80.

## Try it Yourself
### Setting Up
An Azure RM template is included in `infrastructure/` to create a virtual machine to follow along. Using Azure PowerShell, do the following to provision the resources:
```ps1
Login-AzureRmAccount
New-AzureRmResourceGroup -Name cloud-kitchen -Location "Central US"
New-AzureRmResourceGroupDeployment -Name ChefSolo -ResourceGroupName cloud-kitchen -TemplateFile .\infrastructure\arm-template.json
```

SSH into the virtual machine:
- user: `student`
- password: `1Lab_Virtual_Machine!`) 

Then clone this repository and run the init script to get Chef
```shell
git clone https://github.com/lrakai/chef-solo-linux.git
./init.sh
```

### Tearing Down
When finished, remove the Azure resources with:
```ps1
Remove-AzureRmResourceGroup -Name cloud-kitchen -Force
```