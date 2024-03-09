provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "tutorial" {
  ami = var.ami_value
  instance_type = var.ec2_type
}
