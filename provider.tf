# Define the required provider versions for the project
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.11.0"
    }
  }
}

# Configure the AWS provider settings for the project
provider "aws" {
    # profile = "terraform"   # Use the "terraform" AWS profile for credentials
    region = var.region     # Set the AWS region based on the provided variable
}