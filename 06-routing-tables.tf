# Configure public route table for outbound internet traffic
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name = "${var.project_name}-public-rt"
  }
}

# Configure private route table for Application Subnet 1
resource "aws_route_table" "private_app_route_table_1" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw1.id
  }

  tags = {
    Name = "${var.project_name}-private-app-1-rt"
  }
}

# Configure private route table for Application Subnet 2
resource "aws_route_table" "private_app_route_table_2" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw2.id
  }

  tags = {
    Name = "${var.project_name}-private-app-2-rt"
  }
}

# Configure private route table for Data Subnet 2
resource "aws_route_table" "private_data_route_table_1" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw1.id
  }

  tags = {
    Name = "${var.project_name}-private-data-1-rt"
  }
}

# Configure private route table for Data Subnet 2
resource "aws_route_table" "private_data_route_table_2" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw2.id
  }

  tags = {
    Name = "${var.project_name}-private-data-2-rt"
  }
}