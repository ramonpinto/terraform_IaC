resource "aws_s3_bucket" "b" {
  bucket = var.bucket
  acl    = var.acl
  # key    = var.key
  tags   = var.tags
  # force_destroy = var.force_destroy  
  force_destroy = true
}
