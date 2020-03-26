
import boto3

client = boto3.client('dynamodb')

response = client.create_table(
        AttributeDefinitions=[
        {
       	   'AttributeName': 'hashKey',
           'AttributeType': 'S'},
       	{
           'AttributeName': 'rangeKey',
       	   'AttributeType': 'S'}],
        TableName = "mytable_BT",
        KeySchema = [
        {
           'AttributeName': 'hashKey',
	   'KeyType'      : 'HASH'},
	{
           'AttributeName': 'rangeKey',
	   'KeyType'      : 'RANGE'}],
	BillingMode='PROVISIONED',
	ProvisionedThroughput={
	   'ReadCapacityUnits' : 1,
	   'WriteCapacityUnits': 1})


print(response)
