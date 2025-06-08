variable "state_bucket_name" {
  type        = string
  description = "S3 bucket name to store the Terraform state file"
}

variable "lock_table_name" {
  type        = string
  description = "DynamoDB table name for Terraform state locking"
}
