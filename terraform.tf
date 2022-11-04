terraform {
  cloud {
    organization = "my-org"
    hostname = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      tags = ["networking", "source:cli"]
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.4.0"
    }
  }

  provider "aws" {
    region     = "us-west-2"
    access_key = "AKIAXXEMW2ZAZ2FDMBIG"
    secret_key = "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"
  }
  required_version = ">= 1.2.0"
}

