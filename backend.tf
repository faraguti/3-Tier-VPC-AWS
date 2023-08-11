# terraform {
#   backend "s3" {
#     bucket = "terraform-state-faraguti"
#     key = "global/s3/terraform.tfstate"
#     dynamodb_table = "terraform-state"
#     region = "us-west-2"
#     encrypt = true
    
#     profile = "terraform"
#   }
# }