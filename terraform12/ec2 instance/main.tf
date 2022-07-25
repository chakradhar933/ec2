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
  access_key = "AKIATXUNJCEBWOCEIDYL"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-02d1e544b84bf7502"
  instance_type = "t2.micro"

  tags = {
    Name = var.aws_instance
  }
}
