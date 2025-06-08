variable "region" {
  type    = string
  default = "sa-east-1"
}

variable "state_bucket_name" {
  type        = string
  description = "Terraform state S3 bucket name"
}

variable "lock_table_name" {
  type        = string
  description = "DynamoDB lock table name"
}

variable "bucket_name" {
  type    = string
}

variable "domain_name" {
  type        = string
  description = "Your domain name"
}
