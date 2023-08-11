# Create an S3 bucket to store Terraform state
resource "aws_s3_bucket" "terraform-state" {
    bucket = "terraform-state-faraguti"

    # Prevent accidental deletion of the bucket
    lifecycle {
      prevent_destroy = true
    }  
}

# Enable versioning for the Terraform state bucket
resource "aws_s3_bucket_versioning" "terraform-state" {
    bucket = aws_s3_bucket.terraform-state.id

    versioning_configuration {
      status = "Enabled"
    } 
}

# Configure server-side encryption for the Terraform state bucket
resource "aws_s3_bucket_server_side_encryption_configuration" "terraform-state" {
    bucket = aws_s3_bucket.terraform-state.id

    rule {
        apply_server_side_encryption_by_default {
          sse_algorithm = "AES256"
        }
    } 
}

# Apply public access restrictions to the Terraform state bucket
resource "aws_s3_bucket_public_access_block" "terraform-state" {
    bucket                  = aws_s3_bucket.terraform-state.id
    block_public_acls       = true
    block_public_policy     = true
    ignore_public_acls      = true
    restrict_public_buckets = true  
}

# Create a DynamoDB table to store state locking information
resource "aws_dynamodb_table" "terraform-state" {
    name    	    = "terraform-state"
    billing_mode    = "PAY_PER_REQUEST"
    hash_key        = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
}