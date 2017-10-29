variable "bucket_name" {}

resource "aws_s3_bucket" "module_bucket" {
  region = "us-west-1"
  bucket = "${var.bucket_name}"
}

resource "aws_cloudwatch_metric_alarm" "s3_usage_alarm" {
  alarm_name = "${var.bucket_name} usage alarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods = 1
  metric_name = "AllRequests"
  namespace = "AWS/S3"
  dimensions {
    BucketName = "${aws_s3_bucket.module_bucket.bucket}"
  }
  period = 60
  threshold = 50
  statistic = "Sum"
}
