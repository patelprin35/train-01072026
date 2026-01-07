#block
resource "aws_instance" "aws-training-boa01" {
  ami           = "ami-068c0051b15cdb816"
  instance_type = "t3.micro"
  tags = {
    "Name" = "aws-boa-training-0001v"

  }
  key_name = "splunk-key"
}