output "cdn_id" {
  value       = data.aws_cloudfront_distribution.cloudfront-data.id
  sensitive   = false
  description = "ID do CloudFront"
}
output cdn_domain_name {
  value       = data.aws_cloudfront_distribution.cloudfront-data.domain_name
  sensitive   = false
  description = "Nome de Domínio do CloudFront"
}
