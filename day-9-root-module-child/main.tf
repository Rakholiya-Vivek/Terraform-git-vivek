module "test" {
    source = "./modules/"
    ami_id = "ami-0f88e80871fd81e91"
    type = "t2.micro"
}