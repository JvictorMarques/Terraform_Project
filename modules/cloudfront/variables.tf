variable "origin_id" {
  type        = string
  description = "ID S3"
}
variable "bucket_domain_name" {
  type        = string
  description = "Domínio S3"
}
variable "price_class" {
  type        = string
  default     = "PriceClass_200"
  description = "Tipo do Preço"
}
variable "cdn_tags" {
  type        = map(string)
  default     = {}
  description = "Tags Cloudfront"
}
