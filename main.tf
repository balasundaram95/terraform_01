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




provider "github" {

  token = "qraq8tV5eM3TyQ.atlasv1.lf1mwesunVzhlaARwLXq4dBcWO9Yy898p6oMWRPXDOOjz9g5wkCs4Rv6s1KpNb0yK0I"




}

terraform {
  cloud {
    organization = "silcontechlabs-balass1"

    workspaces {
      name = "gh-actions-demo"
    }
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
