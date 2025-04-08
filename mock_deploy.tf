terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

provider "null" {}

resource "null_resource" "mock_aws" {
  triggers = {
    arn = "arn:aws:s3:::mock-bucket"
  }
}

resource "null_resource" "mock_azure" {
  triggers = {
    subscription_id = "12345678-1234-1234-1234-123456789abc"
  }
}

