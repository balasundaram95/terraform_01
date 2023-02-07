#provider block
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAXZ3PKUV4MWXBZV2P"
  secret_key = "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"
}
resource "aws_instance" "windows" {
  ami           = "ami-09e8627bd5d36a4f0"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-006c39b7fb99756f9"]
  key_name = "test_chrome"

  tags = {
    Name = "Test_chrome_final1"
  }
}
