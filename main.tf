provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "my-simple-demo-bucket-0408"  # must be unique
  acl    = "private"
}

resource "aws_security_group" "allow_ssh_http" {
  name        = "allow-ssh-http"
  description = "Allow SSH and HTTP traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
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

resource "aws_instance" "myec2" {
  ami           = "ami-002f6e91abff6eb96"  # Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"
  key_name      = "terra1"         # Replace with your key pair name

  security_groups = [aws_security_group.allow_ssh_http.name]

  tags = {
    Name = "TerraformSimpleEC2"
  }
}
