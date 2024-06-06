terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>5.0.0"
    }
  }
}

# Default, unaliased, AWS provider configuration
#  Terraform Cloud needs a default without an alias
provider "aws" {
    region = "us-east-2"
    default_tags {
        tags = {
            Creator = "AWS Network as Code by Peet van de Sande"
        }
    }
}

# Aliased AWS providers to explicitly specify regions
provider "aws" {
    region = "us-east-2"
    alias = "ue2"
    default_tags {
        tags = {
            Creator = "AWS Network as Code by Peet van de Sande"
        }
    }
}

provider "aws" {
    region = "eu-west-1"
    alias = "ew1"
    default_tags {
        tags = {
            Creator = "AWS Network as Code by Peet van de Sande"
        }
    }
}
