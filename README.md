# TerraformDynamoDBIssue
In this repository are a few tests to describe the problem with DynamoDB and Terraform. In this repo are the following directories:

example_linux_TT  : Example from Linux where both the creation of the table and inserting a record in it are done in Terraform         (-> Error)\
example_linux_TC  : Example from Linux where the creation of the table is done in Terraform, inserting a record is done with the CLI   (-> Ok)\
example_linux_CT  : Example from Linux where the creation of the table is done in the CLI, inserting a record is done with Terraform   (-> Error)\
example_linux_TB  : Example from Linux where the creation of the table is done in Terraform, inserting a record is done with Boto3     (-> Ok)\
example_linux_BT  : Example from Linux where the creation of the table is done with Boto3, inserting a record is done with Terraform   (-> Error)\
example_windows_TT: Example from Windows where the both the creation of the table and inserting a record in it are done in Terraform   (-> Error)\

Each directory contains the scripts that I used and the output of those scripts. There are testAll.sh and removeAll.sh scripts in the main directory to
do all the tests in one go.

## Error message
The error is:

Error: Error retrieving DynamoDB table item: ValidationException: The provided key element does not match the schema\
        status code: 400, request id: 18UHMCQPNB82DNTMSRHNLM5KL7VV4KQNSO5AEMVJF66Q9ASUAAJG

Despite the error, the record is inserted in the table. Destroying the plan is impossible because the error is there: the objects will not be destroyed.

## Assumptions
The scripts assume that terraform is in the directory below this one (../../terraform from the directories with the code) and that in that directory
is also a file terraform.tfvars with the following content:'

aws_access_key = "<accesskey>"
aws_secret_key = "<secret access key>"

