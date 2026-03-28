resource "aws_instance" "mongodb" {
  ami                    = "ami-001790a81373de00d"
  instance_type          = "t3.micro"
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [aws_security_group.mongodb.id]
  iam_instance_profile   = var.instance_profile_name
  key_name               = var.key_name
  tags = {
    Name = "mongodb-server"
  }
}

resource "aws_security_group" "mongodb" {
  name        = "mongodb-sg"
  description = "Allows SSH from public internet"
  vpc_id      = var.vpc_id
  tags = {
    Name = "mongodb-sg"
  }
}

//Allows SSH access from open internet
resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.mongodb.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"
}

//Allows MongoDB's default port to receive connections to the database
resource "aws_vpc_security_group_ingress_rule" "allow_mongodb" {
  security_group_id = aws_security_group.mongodb.id
  cidr_ipv4         = "10.0.0.0/16"
  from_port         = 27017
  to_port           = 27017
  ip_protocol       = "tcp"
}

//Allows all traffic to exit the EC2 instance
resource "aws_vpc_security_group_egress_rule" "allow_all" {
  security_group_id = aws_security_group.mongodb.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}