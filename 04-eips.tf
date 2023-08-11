# Allocate Elastic IP for NAT Gateway 1
resource "aws_eip" "nat1" {

  tags = {
    Name = "${var.project_name}-eip-nat1"
  }

  # Ensure that NAT Gateway 1 is created after the Internet Gateway
  depends_on = [aws_internet_gateway.internet_gateway]
}

# Allocate Elastic IP for NAT Gateway 2
resource "aws_eip" "nat2" {

  tags = {
    Name = "${var.project_name}-eip-nat2"
  }

  # Ensure that NAT Gateway 2 is created after the Internet Gateway
  depends_on = [aws_internet_gateway.internet_gateway]
}
