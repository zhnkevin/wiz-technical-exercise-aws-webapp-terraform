output "mongodb_public_ip" {
  value = module.ec2_mongodb.public_ip
}

output "mongodb_private_ip" {
  value = module.ec2_mongodb.private_ip
}

output "s3_bucket_name" {
  value = module.s3.bucket_name
}