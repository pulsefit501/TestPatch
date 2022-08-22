terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}
 # required_version = ">= 0.14.9"

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

 #text

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  monitoring    = true
  vpc_security_group_ids = ["vpc_sg_01"]
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
