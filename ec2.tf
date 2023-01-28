resource "aws_instance" "i" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = "sriharsha"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    Name = var.env
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-042992ad68653bd97"

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}

