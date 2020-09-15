# S3 Terraform Backend
S3 bucket and DynamoDB lock table for Terraform State backend.

## Setup

Edit the following items in `backend.tf`:
1. Set your credentials in the `aws` provider as described in the Terraform documentation (or, setup AWS CLI for your environment using `aws configure` to automatically work out of the box).
2. Replace all instances of `example` with the name of your terraform project.

To launch the backend, run:
    * `terraform init`
    * `terraform plan`
    * And, when ready: `terraform apply`
    
## Usage

In order to use the new backend for your Terraform project, just add the following snippet to a `*.tf` file, replacing `example` where appropriate and setting the region:

    terraform {
      backend "s3" {
        encrypt = true
        bucket = "example-remote-state-storage-s3"
        dynamodb_table = "example-state-lock-dynamo"
        region = "us-east-1"
        key = "example.tfstate"
      }
    }
    


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
