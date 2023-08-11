# Environment Variables
variable "region" {}
variable "project_name" {}

# VPC Variables
variable "vpc_cidr" {}
variable "public_subnet_az1_cidr" {}
variable "public_subnet_az2_cidr" {}
variable "private_app_subnet_az1_cidr" {}
variable "private_app_subnet_az2_cidr" {}
variable "private_data_subnet_az1_cidr" {}
variable "private_data_subnet_az2_cidr" {}

## Bucket Prefix
# variable "bucket_prefix" {
#     type = string
#     description = "use this variable to create a unique bucket name beginning with the specified prefix."
#     default = "terraform-state-bucket-"
  
# }