resource "aws_instance" "example" {
  for_each = var.instance_type_v
  ami      = var.hello-ami
  #instance_type = var.hello-instance_type
  #count         = var.novm # adding count helps with how many times you want the block to run
  instance_type = each.value
  tags = {
    #Name = var.hello-name
    #Name = "${var.hello-name}-${count.index}"
    Name = "boa-demo-vm-${each.key}"
  }
}