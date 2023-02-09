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

    organization = "silcontechlabs"




    workspaces {

      prefix = "Terraform-"

    }

  }



}

#resource block
resource "aws_instance" "windows" {
  ami           = "ami-09e8627bd5d36a4f0"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-006c39b7fb99756f9"]
  key_name = "test_chrome"

  tags = {
    Name = "Test_chrome_final1"
  }
}
