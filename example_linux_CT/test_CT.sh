echo "Current date/time:"
date

echo "Version Terraform:"
../../terraform version

echo "Version pip3"
pip3 -V

echo "aws CLI version"
aws --version

echo "Version boto3"
python3 <<here
import boto3
print(boto3.__version__)
here


echo -------------------------------------------------------------------------------------------------------------------------------------------------
echo aws dynamodb create-table --attribute-definitions \'[{\"AttributeName\": \"hashKey\", \"AttributeType\": \"S\"}, {\"AttributeName\": \"rangeKey\", \"AttributeType\": \"S\"}]\' --table-name mytable_CT --key-schema \'[{ \"AttributeName\": \"hashKey\", \"KeyType\": \"HASH\"}, {\"AttributeName\": \"rangeKey\", \"KeyType\": \"RANGE\"}]\' --billing-mode "PROVISIONED" --provisioned-throughput '{"ReadCapacityUnits": 1, "WriteCapacityUnits": 1}'
echo -------------------------------------------------------------------------------------------------------------------------------------------------
aws dynamodb create-table --attribute-definitions '[{"AttributeName": "hashKey", "AttributeType": "S"}, {"AttributeName": "rangeKey", "AttributeType": "S"}]' --table-name mytable_CT --key-schema '[{ "AttributeName": "hashKey", "KeyType": "HASH"}, {"AttributeName": "rangeKey", "KeyType": "RANGE"}]' --billing-mode "PROVISIONED" --provisioned-throughput '{"ReadCapacityUnits": 1, "WriteCapacityUnits": 1}'

echo -----------------------------------------------------
echo ../../terraform init -var-file=../../terraform.tfvars 
echo -----------------------------------------------------
../../terraform init -var-file=../../terraform.tfvars 

echo ------------------------------------------------------------------------------
echo ../../terraform plan -out=./terraform.tfplans -var-file=../../terraform.tfvars
echo ------------------------------------------------------------------------------
../../terraform plan -out=./terraform.tfplans -var-file=../../terraform.tfvars

echo -------------------------------------------
echo ../../terraform apply \"./terraform.tfplans\"
echo -------------------------------------------
../../terraform apply "./terraform.tfplans"
