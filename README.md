# backend

module "s3" {
  source         = "youngchunse/backend/app"
  bucket         = var.bucket
  acl            = var.acl
  versioning     = var.versioning
  lifecycle_rule = var.lifecycle_rule

  dynamodb_name  = var.dynamodb_name
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = var.hash_key
  attribute_name = var.attribute_name
  attribute_type = var.attribute_type
}
