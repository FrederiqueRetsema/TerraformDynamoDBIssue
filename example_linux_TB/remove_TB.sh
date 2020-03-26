echo "Current date:"
date
echo --------------------------------------------------------
echo ../../terraform destroy -var-file=../../terraform.tfvars
echo --------------------------------------------------------
../../terraform destroy -var-file=../../terraform.tfvars

