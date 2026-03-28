module "networking" {
  source = "./modules/networking"
}

module "iam" {
  source = "./modules/iam"
}

module "s3" {
  source = "./modules/s3"
}

module "ec2_mongodb" {
  source                = "./modules/ec2-mongodb"
  vpc_id                = module.networking.vpc_id
  public_subnet_id      = module.networking.public_subnet_ids[0]
  key_name              = "wiz-mongodb"
  s3_backup_bucket      = module.s3.bucket_name
  instance_profile_name = module.iam.instance_profile_name
}