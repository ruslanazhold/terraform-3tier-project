resource "aws_s3_bucket" "s3bucket-ter" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_ownership_controls" "own" {
  bucket = aws_s3_bucket.s3bucket-ter.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "pubacces" {
  bucket = aws_s3_bucket.s3bucket-ter.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
resource "aws_s3_bucket_acl" "acl" {
  depends_on = [
    aws_s3_bucket_ownership_controls.own,
    aws_s3_bucket_public_access_block.pubacces,
  ]

  bucket = aws_s3_bucket.s3bucket-ter.id
  acl    = "public-read"
}
resource "aws_s3_bucket_object" "index" {
  bucket = aws_s3_bucket.s3bucket-ter.id
  key    = "index.html"
  source = "index.html"
  acl = "public-read"
  content_type = "text/html"
}
resource "aws_s3_bucket_object" "error" {
  bucket = aws_s3_bucket.s3bucket-ter.id
  key    = "error.html"
  source = "error.html"
  acl = "public-read"
  content_type = "text/html"
}
resource "aws_s3_bucket_object" "flower" {
  bucket = aws_s3_bucket.s3bucket-ter.id
  key    = "flower..png"
  source = "flower..png"
  acl = "public-read"
}

resource "aws_s3_bucket_website_configuration" "config" {
  bucket = aws_s3_bucket.s3bucket-ter.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

}

