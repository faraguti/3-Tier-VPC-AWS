# Configure NAT Gateway 1 to provide outbound internet access for private subnets in Availability Zone 1
resource "aws_nat_gateway" "ngw1" {
  allocation_id = aws_eip.nat1.id
  subnet_id     = aws_subnet.public_subnet_az1.id

  tags = {
    Name = "${var.project_name}-ngw-1"
  }
}

# Configure NAT Gateway 2 to provide outbound internet access for private subnets in Availability Zone 2
resource "aws_nat_gateway" "ngw2" {
  allocation_id = aws_eip.nat2.id
  subnet_id     = aws_subnet.public_subnet_az2.id

  tags = {
    Name = "${var.project_name}-ngw-2"
  }
}
