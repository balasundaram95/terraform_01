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
  access_key = secrets.AWS_ACCESS_KEY_ID
  secret_key = secrets.AWS_SECRET_KEY_ID 
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
