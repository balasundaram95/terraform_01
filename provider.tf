terraform {

  required_providers {

    aws = {

      source  = "hashicorp/aws"

      version = "~> 4.0"

    }

    github = {

      source  = "integrations/github"

      version = "~> 5.0"

    }

  }

}




provider "aws" {

  region     = "us-east-1"

  access_key = "AKIAXZ3PKUV4MWXBZV2P"

  secret_key = "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"
}







# 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





terraform {

  backend "remote" {

    organization = "silcontechlabs-bala_01"




    workspaces {

      prefix = "Terraform-"

    }

  }



}
