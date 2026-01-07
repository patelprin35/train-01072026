resource "aws_instance" "example" {
  ami           = var.hello-ami
  instance_type = var.hello-instance_type

  tags = {
    Name = var.hello-name
  }
}