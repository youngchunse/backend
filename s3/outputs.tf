output "s3_bucket_id" {
  value = aws_s3_bucket.terraform_state_storage_s3.id
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.terraform_state_storage_s3.arn
}

output "dynamodb_id" {
  value = aws_dynamodb_table.dynamodb_terraform_state_lock.id
}

output "dynamodb_arn" {
  value = aws_dynamodb_table.dynamodb_terraform_state_lock.arn
}
