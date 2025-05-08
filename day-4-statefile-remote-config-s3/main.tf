resource "aws_instance" "name" {
  ami = "ami-0f88e80871fd81e91"
  instance_type = "t2.micro"

  tags = {
    Name = "dev1"
  }
}

resource "aws_subnet" "default-sub" {
    cidr_block = "172.31.96.0/20"
    vpc_id = "vpc-085711b82cae8cf09"
    depends_on = [ aws_instance.name ]

    tags = {
      Name = ""
    }
}

# resource "aws_vpc" "" {

# }