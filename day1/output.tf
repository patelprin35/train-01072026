#block
output "hello_public_ip" {
  value = aws_instance.aws-training-boa01.public_ip
}

output "hello2_private_ip" {
  value = aws_instance.aws-training-boa01.private_ip
}

output "hello3_security" {
  value = aws_instance.aws-training-boa01.vpc_security_group_ids
}

output "hello4_status" {
  value = aws_instance.aws-training-boa01.instance_state
}

output "hello5_ami" {
  value = aws_instance.aws-training-boa01.ami
}

output "hello6_instance_id" {
  value = aws_instance.aws-training-boa01.id
}

output "hello7_tags" {
  value = aws_instance.aws-training-boa01.tags_all
}