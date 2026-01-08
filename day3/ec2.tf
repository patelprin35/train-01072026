resource "aws_instance" "example" {
  ami           = var.hello-ami
  instance_type = var.hello-instance_type
  count         = var.novm  # adding count helps with how many times you want the block to run
  tags = {
    #Name = var.hello-name
    Name = "${var.hello-name}-${count.index}"
  }
}