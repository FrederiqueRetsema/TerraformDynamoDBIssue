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
# RESOURCES
##################################################################################

resource "aws_dynamodb_table" "mytable" {
    name           = "mytable_TC"
    billing_mode   = "PROVISIONED"
    read_capacity  = 1
    write_capacity = 1
    hash_key       = "hashKey"
    range_key      = "rangeKey"

    attribute {
        name = "hashKey"
        type = "S"
    }

    attribute {
        name = "rangeKey"
        type = "S"
    }
}
