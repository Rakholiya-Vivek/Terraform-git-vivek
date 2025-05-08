resource "aws_dynamodb_table" "name" {
  name = "state-lock-dynamo"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_instance" "name" {
  ami = "ami-0f88e80871fd81e91"
  instance_type = "t2.micro"

  tags = {
    Name = "dev1"
  }
}