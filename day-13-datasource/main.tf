provider "aws" {

}


data "aws_subnet" "name" {
  filter {
    name = "tag:Name"
    values = ["subnet-dev"]
  }
}

resource "aws_instance" "name" {
  ami = "ami-0f88e80871fd81e91"
  instance_type = "t2.micro"
  subnet_id = data.aws_subnet.name.id
}