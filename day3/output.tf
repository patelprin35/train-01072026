output "name" {
  value = aws_instance.example.*.instance_state
}

output "name2" {
  value = aws_instance.example.*.arn
}

output "name3" {
  #value = aws_instance.example.*.arn
  value = [for i in aws_instance.example : i.arn]
}