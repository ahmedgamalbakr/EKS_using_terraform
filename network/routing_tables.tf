resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  route {
    # The CIDR block of the route.
    cidr_block = "0.0.0.0/0"

    gateway_id = aws_internet_gateway.igw_main.id
  }
}


# routing table association

resource "aws_route_table_association" "public1" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.public_1.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public2" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.public_2.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.public.id
}