output "deployment_bucket" {
  value = "${aws_s3_bucket.default.bucket}"
}

output "deployment_bucket_id" {
  value = "${aws_s3_bucket.default.id}"
}
