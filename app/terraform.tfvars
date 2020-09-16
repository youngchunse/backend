region         = "us-east-1"

bucket         = "terraform-state-demo-dev-application"
acl            = "private"
versioning     = true
lifecycle_rule = true

dynamodb_name  = "terraform-state-demo-dev-application-lock"
read_capacity  = 20
write_capacity = 20
hash_key       = "LockID"
attribute_name = "LockID"
attribute_type = "S"
