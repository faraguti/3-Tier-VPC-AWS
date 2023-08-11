# Associate Public Subnet in Availability Zone 1 with Public Route Table
resource "aws_route_table_association" "public_subnet_az1_rt_association" {
  subnet_id      = aws_subnet.public_subnet_az1.id
  route_table_id = aws_route_table.public_route_table.id
}

# Associate Public Subnet in Availability Zone 2 with Public Route Table
resource "aws_route_table_association" "public_subnet_2_rt_association" {
  subnet_id      = aws_subnet.public_subnet_az2.id
  route_table_id = aws_route_table.public_route_table.id
}

# Associate Public Subnet in Availability Zone 1 with Public Route Table
resource "aws_route_table_association" "private_app_subnet_az1_rt_association" {
  subnet_id      = aws_subnet.private_app_subnet_az1.id
  route_table_id = aws_route_table.private_app_route_table_1.id
}

# Associate Public Subnet in Availability Zone 1 with Public Route Table
resource "aws_route_table_association" "private_app_subnet_az2_rt_association" {
  subnet_id      = aws_subnet.private_app_subnet_az2.id
  route_table_id = aws_route_table.private_app_route_table_2.id
}

# Associate Public Subnet in Availability Zone 1 with Public Route Table
resource "aws_route_table_association" "private_data_subnet_az1_rt_association" {
  subnet_id      = aws_subnet.private_data_subnet_az1.id
  route_table_id = aws_route_table.private_data_route_table_1.id
}

# Associate Public Subnet in Availability Zone 1 with Public Route Table
resource "aws_route_table_association" "private_data_subnet_az2_rt_association" {
  subnet_id      = aws_subnet.private_data_subnet_az2.id
  route_table_id = aws_route_table.private_data_route_table_2.id
}