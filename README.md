# S3 Terraform Backend
S3 bucket and DynamoDB lock table for Terraform State backend.

## Setup

Edit the following items in `app/main.tf`:
1. Set your credentials in the `aws` provider as described in the Terraform documentation (or, setup AWS CLI for your environment using `aws configure` to automatically work out of the box).

To launch the backend, run:
    * `terraform init`
    * `terraform plan`
    * And, when ready: `terraform apply`
    * When finished: `terraform destroy`

## CICD Pipeline



## Usage

In order to use the new backend for your Terraform project, just add the following snippet to a `*.tf` file. Replace the value of `key` with your own logical grouping for the tfstate files

    terraform {
      backend "s3" {
        bucket               = "terraform-state-dev-application"
        dynamodb_table       = "terraform-state-dev-application-lock"
        key                  = "dev/us-east-1/landing-zone"
        region               = "us-east-1"
      }
    }
