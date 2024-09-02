module "s3" {
  source         = "./modules/s3"
  s3_bucket_name = "jv-bucket-iac"
  s3_tags = {
    Iac = true
  }
}

module "cloudfront" {
  source             = "./modules/cloudfront"
  origin_id          = module.s3.bucket_id
  bucket_domain_name = module.s3.bucket_domain_name
  price_class        = "PriceClass_200"
  cdn_tags = {
    Iac = true
  }
  depends_on = [
    module.s3
  ]
}

# module "sqs" {
#   source     = "terraform-aws-modules/sqs/aws"
#   name       = "jv-sqs"
#   create_dlq = true
#   tags = {
#     Iac = "true"
#   }
# }