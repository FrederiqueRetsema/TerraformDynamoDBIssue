##################################################################################
# VARIABLES
##################################################################################

variable "aws_access_key" {}
variable "aws_secret_key" {}

##################################################################################
# PROVIDERS
##################################################################################

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "eu-west-1"
}

##################################################################################
# DATA
##################################################################################

data "aws_dynamodb_table" "mytable" {
    name = "mytable_BT"
}

##################################################################################
# RESOURCES
##################################################################################

resource "aws_dynamodb_table_item" "mytable-item" {
    table_name     = data.aws_dynamodb_table.mytable.name
    hash_key       =  data.aws_dynamodb_table.mytable.hash_key

    item = <<ITEM
{
    "hashKey"         : {"S": "myhashkey"},
    "rangeKey"        : {"S": "myrangekey"},
    "noKey"           : {"S": "nokey"}
}
ITEM
}
