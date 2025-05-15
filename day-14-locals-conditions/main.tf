provider "aws" {
#   region = "us-east-1"
}

# variable "aws_region" {
#   type        = string
#   default     = "us-west-2"
#   validation {
#     condition = var.aws_region == "us-west-2" || var.aws_region == "eu-west-1"
#     error_message = "error" 
#     }
# }

# resource "aws_instance" "name" {
#   ami = "ami-0f88e80871fd81e91"
#   instance_type = "t2.micro"
# }

# locals {
#   ami = "ami-0f88e80871fd81e91"
#   type = "t2.micro"
# }

variable "ami" {
  type    = string
  default = "ami-0f88e80871fd81e91"
}

variable "instance_type" {
  type = string
  default = "t2.nano"
}

resource "aws_instance" "dev" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = var.instance_type == "t2.micro" ? 1 : 0
  tags = {
    Name = "dev"
  }
}