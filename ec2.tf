resource "aws_instance" "i" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = var.env
  }
}
