provider "aws" {
  profile = "default"
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = var.ec2_instance_type

  tags = {
    Name = var.instance_name
  }
}
