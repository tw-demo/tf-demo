resource "aws_instance" "i" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = "sriharsha"
  tags = {
    Name = var.env
  }
}
