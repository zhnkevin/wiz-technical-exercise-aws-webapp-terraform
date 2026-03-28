//For account-regional namespace buckets
data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

resource "aws_s3_bucket" "main" {
  bucket           = format("mongodb-backups-%s-%s-an", data.aws_caller_identity.current.account_id, data.aws_region.current.name)
  bucket_namespace = "account-regional"
}

//Allows public access to S3 bucket
resource "aws_s3_bucket_public_access_block" "main" {
  bucket = aws_s3_bucket.main.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

//Allows anyone to read and download contents of bucket
resource "aws_s3_bucket_policy" "main" {
  bucket     = aws_s3_bucket.main.id
  depends_on = [aws_s3_bucket_public_access_block.main]

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Sid       = "PublicReadAndList"
      Effect    = "Allow"
      Principal = "*"
      Action    = [
        "s3:GetObject", 
        "s3:ListBucket"
        ]
      Resource  = [
        aws_s3_bucket.main.arn,
        "${aws_s3_bucket.main.arn}/*"
      ]
    }]
  })
}