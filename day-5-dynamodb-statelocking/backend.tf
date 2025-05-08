terraform {
  backend "s3" {
    bucket = "anyy"
    region = "us-east-1"
    key = "terraform.tfstate"
    use_lockfile = true
    encrypt = true
  }
}