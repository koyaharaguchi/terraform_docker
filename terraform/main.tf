resource "aws_s3_bucket" "website" {
  bucket_prefix = "website"
}

resource "aws_s3_bucket_acl" "website" {
  bucket = aws_s3_bucket.website.id
  acl = "public-read"
}

resource "aws_s3_bucket_website_configuration" "website" {
    bucket = aws_s3_bucket.website.bucket
    index_document {
      suffix = "index.html"
    }
}