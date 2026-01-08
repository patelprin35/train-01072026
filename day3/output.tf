output "name" {
  value = aws_instance.example.*
}

output "name2" {
  #value = aws_instance.example.*
  value = [for i in aws_instance.example : i.ami]
}

output "name3" {
  #value = aws_instance.example.*.arn
  value = [for i in aws_instance.example : i.arn]
}