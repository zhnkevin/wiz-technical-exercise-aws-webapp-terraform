# References

## Terraform Resources
- TERRAFORM MODULE EXAMPLES - https://registry.terraform.io/namespaces/terraform-aws-modules
- Naming Conventions: https://www.terraform-best-practices.com/naming
- Modules
  - https://developer.hashicorp.com/terraform/tutorials/modules/pattern-module-creation
- Outputs
  - https://developer.hashicorp.com/terraform/language/values/outputs
- General AWS resources:
  - https://registry.terraform.io/providers/hashicorp/aws/latest/docs
- State backend Bucket
  - https://developer.hashicorp.com/terraform/language/backend
  - https://developer.hashicorp.com/terraform/language/backend/s3
- Default Tags
  - https://registry.terraform.io/providers/-/aws/latest/docs/data-sources/default_tags

## Terraform Modules

### Networking
- VPC Example: https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest
- VPC: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
- Subnets: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
- Internet Gateway: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/internet_gateway
- AWS EIP: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip
- Nat Gateway: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway
- Route Table: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table
- Route Table Association: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association

### EC2
- EC2 example - https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest
- Security Group Example - https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/latest
- AWS AMI: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami
- EC2 instance - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

### IAM
- IAM Policy - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy
- IAM Role - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role
- Instance Profile - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile
- IAM Role policy attachment - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment

### S3
- S3 bucket example: https://registry.terraform.io/modules/terraform-aws-modules/s3-bucket/aws/latest?tab=resources
- S3 bucket resource: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
- S3 public access block: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block


### ECR
- ECR module example - https://registry.terraform.io/modules/terraform-aws-modules/ecr/aws/latest
- ECR repository - https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository

## MongoDB (v6.0)
- Install on Red Hat: https://www.mongodb.com/docs/v6.0/tutorial/install-mongodb-on-red-hat/
- Enable authentication: https://www.mongodb.com/docs/v6.0/tutorial/enable-authentication/
- Configuration options: https://www.mongodb.com/docs/v6.0/reference/configuration-options/#std-label-configuration-options
- Backup Script: https://oneuptime.com/blog/post/2026-01-25-mongodb-mongodump-backup/view

## EKS
## EKS
- EKS Workshop: https://www.eksworkshop.com/docs/introduction
- Set up load balancermazon.com/eks/latest/userguide/aws-load-balancer-controller.html
  - https://docs.aws.amazon.com/eks/latest/userguide/lbc-helm.html
  - With Amazon EKS Auto Mode, you don't need to install or upgrade networking add-ons. Auto Mode includes pod networking and load balancing capabilities.
- EKS AUTO MODE
  - https://docs.aws.amazon.com/eks/latest/userguide/auto-configure-alb.html
  - Sample walkthrough - https://docs.aws.amazon.com/eks/latest/userguide/auto-elb-example.html
  - Tag subnets for EKS automode - needed for EKS - https://docs.aws.amazon.com/eks/latest/userguide/tag-subnets-auto.html

## K8S
- Secrets: https://kubernetes.io/docs/concepts/configuration/secret/
- Cluster role-binding: https://kubernetes.io/docs/reference/access-authn-authz/rbac/#kubectl-create-clusterrolebinding

## GitHub Actions
- Terraform with GitHub Actions: https://developer.hashicorp.com/terraform/tutorials/automation/github-actions
- Configure AWS credentials: https://github.com/aws-actions/configure-aws-credentials
- Setup Terraform: https://github.com/hashicorp/setup-terraform
- Amazon ECR login: https://github.com/aws-actions/amazon-ecr-login

## Docker
- Docker on AWS workshop: https://docker.awsworkshop.io/
- https://www.youtube.com/watch?v=DQdB7wFEygo
