terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region     = "ap-northeast-1"  
  access_key = "AKIAVD6AYMC77KJSYCMG"
  secret_key = "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"
}

resource "aws_instance" "ec2_instance" {
  ami           = "ami-0ed99df77a82560e6" 
  instance_type = "t2.micro"
}
output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}