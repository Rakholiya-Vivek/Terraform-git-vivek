terraform {
  backend "s3" {
    bucket = "anyy"
    region = "us-east-1"
    key = "terraform.tfstate"
    dynamodb_table = "state-lock-dynamo"
    encrypt = true
  }
}