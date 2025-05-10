resource "aws_instance" "name" {
  ami = var.ami
  instance_type = var.type
}

resource "aws_subnet" "name" {
    cidr_block = var.cidr_block
    vpc_id = var.vpc_id

    tags = {
      Name = "def-sub"
    }
}