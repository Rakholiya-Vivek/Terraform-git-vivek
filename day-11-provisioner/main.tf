# resource "aws_instance" "name" {
#   ami           = "ami-0f88e80871fd81e91"
#   instance_type = "t2.micro"

  # tags = {
  #   Name = "dev1"
  # }

#   provisioner "local-exec" {
#     command = "echo Instance created > file.txt"
#   }
# }

# resource "aws_key_pair" "name" {
#   key_name = "mykey2.pem"
#   public_key = file("~/Downloads/mykey2.pub")
# }

resource "aws_instance" "name2" {
  ami           = "ami-0f88e80871fd81e91"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-00f0fe19ceef0de0e"]
  key_name = "mykey2"

  tags = {
    Name = "dev2"
  }

#   provisioner "remote-exec" {
#     inline = [ 
#         "sudo yum install nginx -y",
#         "sudo systemctl start nginx",
#         "sudo systemctl enable nginx"
#      ]

#      connection {
#        type        = "ssh"
#       user        = "ec2-user"
#       private_key = file("~/Downloads/mykey2.pem")
#       host        = self.public_ip
#      }
# }
  #   provisioner "file" {
  #   source      = "file.txt"
  #   destination = "/home/ubuntu/file2.txt"

  #   connection {
  #      type        = "ssh"
  #     user        = "ec2-user"
  #     private_key = file("~/Downloads/mykey2.pem")
  #     host        = self.public_ip
  #    }
  # }
  }

  resource "null_resource" "name5" {

    provisioner "file" {
    source      = "file.txt"
    destination = "/home/ec2-user/file2.txt"

    connection {
       type        = "ssh"
      user        = "ec2-user"
      private_key = file("~/Downloads/mykey2.pem")
      host        = aws_instance.name2.public_ip
     }
  }
  # triggers = {
  #   always_run = timestamp()
  # }
  }