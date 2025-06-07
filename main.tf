provider "aws" {
  region = var.region
}

module "site_s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

module "route53" {
  source      = "./modules/route53"
  domain_name = var.domain_name
}
