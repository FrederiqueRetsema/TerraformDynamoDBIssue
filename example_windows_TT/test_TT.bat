@echo off
echo Current date/time:
date /T
time /T

echo Version Terraform:
..\..\terraform version

echo aws CLI version
aws --version

echo -----------------------------------------------------
echo ..\..\terraform init -var-file=..\..\terraform.tfvars 
echo -----------------------------------------------------
..\..\terraform init -var-file=..\..\terraform.tfvars 

echo ------------------------------------------------------------------------------
echo ..\..\terraform plan -out=.\terraform.tfplans -var-file=..\..\terraform.tfvars
echo ------------------------------------------------------------------------------
..\..\terraform plan -out=.\terraform.tfplans -var-file=..\..\terraform.tfvars

echo -------------------------------------------
echo ../../terraform apply ".\terraform.tfplans"
echo -------------------------------------------
..\..\terraform apply ".\terraform.tfplans"

