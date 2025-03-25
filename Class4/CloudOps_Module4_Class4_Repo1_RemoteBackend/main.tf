terraform {
  required_version = ">= 0.15.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Provider configuration
provider "aws" {
  region = "us-east-1"
}

# Resource definition
resource "aws_instance" "webserver" {
  ami           = "ami-0d6927ccef429da8c"
  instance_type = "t2.micro"

  tags = {
    Name = "Web Server"
  }

  # Security group configuration
  vpc_security_group_ids = ["${aws_security_group.webserver.id}"]

  # User data for webserver configuration
  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install httpd -y
              sudo service httpd start
              EOF
}

# Security group definition
resource "aws_security_group" "webserver" {
  name        = "webserver"
  description = "Allows HTTP traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}