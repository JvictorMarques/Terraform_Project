output "bucket_domain_name" {
  value       = data.aws_s3_bucket.bucket-data.bucket_domain_name
  sensitive   = false
  description = "Nome do domínio do bucket"
}

output "bucket_id" {
  value       = data.aws_s3_bucket.bucket-data.id
  sensitive   = false
  description = "ID de domínio do bucket"
}