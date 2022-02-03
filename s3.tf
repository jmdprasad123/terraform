resource "aws_s3_bucket" "multi_buckets" {
  count         = length(var.s3_bucket_names)
  bucket        = var.s3_bucket_names[count.index]
  acl           = "private"
  force_destroy = true
}