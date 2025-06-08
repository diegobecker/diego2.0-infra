terraform {
  backend "s3" {
    bucket         = "diego2.0-tfstate"
    key            = "global/terraform.tfstate"
    region         = "sa-east-1"
    dynamodb_table = "diego2.0-terraform-locks"
    encrypt        = true
  }
}


provider "aws" {
  region = var.region
}

module "backend" {
  source            = "./modules/backend"
  state_bucket_name = var.state_bucket_name
  lock_table_name   = var.lock_table_name
}

module "site_s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

module "route53" {
  source      = "./modules/route53"
  domain_name = var.domain_name
}

module "acm" {
  source         = "./modules/acm"
  domain_name    = var.domain_name
  hosted_zone_id = module.route53.zone_id
}
