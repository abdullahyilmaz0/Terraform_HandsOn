locals {
  mytag = "abd-devops-team"
}

resource "aws_instance" "tf-ec2" {
  ami           = var.ec2_ami
  instance_type = var.ec2_type
  key_name      = "test_002"
  tags = {
    Name = "${local.mytag}-come from locals"
  }
}

resource "aws_s3_bucket" "tf-s3-abd" {
  bucket = var.s3_bucket_name
  tags = {
    Name = "${local.mytag}-come-from-locals"
  }
}
