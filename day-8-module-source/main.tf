resource "aws_instance" "name" {
  ami = var.ami
  instance_type = var.type
}
resource "aws_subnet" "name" {
    cidr_block = "172.31.96.0/20"
    vpc_id = var.vpc_id

    tags = {
      Name = "def-sub"
    }
}