terraform {
  required_providers {
    
    aws = {
        source = "hashicorp/aws"
        version = "~>5.22.0"
    }
  }

  backend "s3" {
    bucket = "take1-10-22"
    key = "eks-cluster/terraform.tfstate"
    region = "us-east-1"
    //dynamodb_table = "..."
  }
}