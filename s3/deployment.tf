resource "aws_s3_bucket" "default" {
  bucket = "${var.application_name}-beanstalk-deployments"
}
