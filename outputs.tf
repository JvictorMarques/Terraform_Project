
output "s3_bucket_domain_name" {
  value       = module.s3.bucket_domain_name
  sensitive   = false
  description = "Nome do domínio do bucket"
}

output "cdn_domain_name" {
  value       = module.cloudfront.cdn_domain_name
  sensitive   = false
  description = "Nome de Domínio do CloudFront"
}