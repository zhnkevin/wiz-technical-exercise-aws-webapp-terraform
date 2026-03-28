resource "aws_iam_policy" "ec2_policy" {
  name        = "overly-permissive-policy"
  path        = "/"
  description = "IAM policy that gives excessive S3 read access, EC2 access, and Lambda permissions"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:*",
          "lambda:*",
          "s3:*"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_role" "mongo_db" {
  name = "mongo-db-ec2"
  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = "AssumeRole"
        Principal = {
          Service = "ec2.amazonaws.com"
          AWS = "arn:aws:iam::940482447333:root"
        }
      },
    ]
  })
}

resource "aws_iam_instance_profile" "mongodb" {
  name = "mongodb-instance-profile"
  role = aws_iam_role.mongo_db.name
}

resource "aws_iam_role_policy_attachment" "mongo_db_attach" {
  role       = aws_iam_role.mongo_db.name
  policy_arn = aws_iam_policy.ec2_policy.arn
}