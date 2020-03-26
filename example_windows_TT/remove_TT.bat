@echo off
echo "Current date:"
date /T
time /T

echo --------------------------------------------------------
echo ..\..\terraform destroy -var-file=..\..\terraform.tfvars
echo --------------------------------------------------------
..\..\terraform destroy -var-file=..\..\terraform.tfvars

