variable "region" {
  type    = string
  default = "sa-east-1"
}

variable "bucket_name" {
  type    = string
}

variable "domain_name" {
  type        = string
  description = "Your domain name"
}
