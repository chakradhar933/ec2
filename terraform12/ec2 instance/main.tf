terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  access_key = "AKIATXUNJCEBQRSWGTHI"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-02d1e544b84bf7502"
  instance_type = "t2.micro"

  tags = {
    Name = var.aws_instance
  }
}
