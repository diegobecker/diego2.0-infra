variable "domain_name" {
  type        = string
  description = "Domain name to map"
}

variable "hosted_zone_id" {
  type        = string
  description = "Route53 hosted zone ID"
}

variable "cloudfront_domain_name" {
  type        = string
  description = "Domain name of the CloudFront distribution"
}
