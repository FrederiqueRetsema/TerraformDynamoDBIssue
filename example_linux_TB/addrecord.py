import boto3

client = boto3.client('dynamodb')

response = client.put_item(
        TableName = "mytable_TB",
        Item = {
            'hashKey' : { "S" : "myhashkey"},
            'rangeKey': { "S" : "myrangekey"}, 
            "noKey"   : { "S" : "nokey"}})

print(response)
