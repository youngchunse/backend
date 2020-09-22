# S3 Terraform Backend
S3 bucket and DynamoDB lock table for Terraform State Remote Backend.

## Setup

Edit the following items in `app/main.tf`:
1. Set your credentials in the `aws` provider as described in the Terraform documentation (or, setup AWS CLI for your environment using `aws configure` to automatically work out of the box).

To launch the backend, run:
    * `terraform init`
    * `terraform plan`
    * When ready: `terraform apply`
    * And, When finished: `terraform destroy`

## CircleCI Pipeline

1. Set your credentials as Environment Variables on CirleCI IU. Under Project Setting > Environment Variables > Add Variable.

Set values for these 3 variables:
    * `AWS_ACCESS_KEY_ID`
    * `AWS_SECRET_ACCESS_KEY`
    * `REGION`


## Usage

In order to use the new backend for your Terraform project, just add the following snippet to a `*.tf` file. Replace the value of `key` with your own logical grouping for the tfstate files. Bucket name must be unique or else an error message will appear.

    terraform {
      backend "s3" {
        bucket               = "terraform-state-dev-application"
        dynamodb_table       = "terraform-state-dev-application-lock"
        key                  = "dev/us-east-1/landing-zone"
        region               = "us-east-1"
      }
    }
