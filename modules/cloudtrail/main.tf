resource "aws_cloudtrail" "insecure-logging" {
  name           = "cloudtrail-logging"
  s3_bucket_name = "my-cloudtrail-bucket"
  enable_logging = true
  enable_log_file_validation = true
  kms_key_id = var.kms_key_id
  is_multi_region_trail =  true
  cloud_watch_logs_group_arn = var.cloud_watch_logs_group_arn 
}
