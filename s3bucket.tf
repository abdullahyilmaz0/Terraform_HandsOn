resource "aws_s3_bucket" "firstBucket" {
  bucket = "my-tf-first-bucket"


}

output "s3_meta_data" {
  value = aws_s3_bucket.firstBucket.region
}
