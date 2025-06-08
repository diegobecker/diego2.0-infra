variable "domain_name" {
  description = "Primary domain name"
  type        = string
}

variable "s3_bucket_website_endpoint" {
  description = "S3 static website endpoint"
  type        = string
}

variable "acm_certificate_arn" {
  description = "ARN of the ACM certificate (us-east-1)"
  type        = string
}
