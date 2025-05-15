variable "env" {
  type = list(string)
  default = [ "dev1", "dev2","dev3" ]
}

resource "aws_instance" "name" {
    # count = 2
    # count = length(var.env)

    # tags = {
    #     Name = var.env[count.index]
    # }

    # tags = {
    #     Name = "dev${count.index}"
    # }

    for_each = toset(var.env)
    
    ami = "ami-0f88e80871fd81e91"
    instance_type = "t2.micro"

    tags = {
        Name = each.value
    }
}