output "instance_id" {
  value = aws_instance.mongodb.id
}

output "private_ip" {
  value = aws_instance.mongodb.private_ip
}

output "public_ip" {
  value = aws_instance.mongodb.public_ip
}