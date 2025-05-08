resource "aws_instance" "dev" {
  ami = var.ami
  instance_type = var.type

#   tags = {
#     name = "dev"
#   }
}