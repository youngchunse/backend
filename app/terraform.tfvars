region         = "us-east-1"

bucket         = "terraform-remote-state-storage-s3"
acl            = "private"
versioning     = true
lifecycle_rule = true

dynamodb_name  = "terraform-state-lock-dynamo"
read_capacity  = 5
write_capacity = 5
hash_key       = "LockID"
attribute_name = "LockID"
attribute_type = "S"
