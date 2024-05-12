resource "aws_vpc" "testvpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = var.vpc_cidr
  }
}

resource "aws_subnet" "pubsubnet1" {
  vpc_id                  = aws_vpc.testvpc.id
  cidr_block              = var.vpc_cidr_pub
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_cidr_name
  }
}

resource "aws_subnet" "privsubnet1" {
  vpc_id                  = aws_vpc.testvpc.id
  cidr_block              = var.vpc_cidr_priv
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = var.private_cidr_name
  }
}

resource "aws_internet_gateway" "ig1" {
  vpc_id = aws_vpc.testvpc.id

  tags = {
    Name = var.igw_name
  }
}

resource "aws_nat_gateway" "ngw1" {
  subnet_id         = aws_subnet.privsubnet1.id
  connectivity_type = "private"

  tags = {
    Name = var.ngw_name
  }
}

resource "aws_route_table" "rt1" {
  vpc_id = aws_vpc.testvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig1.id
  }
  tags = {
    Name = var.rt1_name
  }
}

resource "aws_route_table_association" "rtpub" {
  route_table_id = aws_route_table.rt1.id
  subnet_id      = aws_subnet.pubsubnet1.id
}

# resource "aws_route_table" "rt2" {
#   vpc_id = aws_vpc.testvpc.id
#   route {
#     cidr_block     = var.vpc_cidr
#     nat_gateway_id = aws_nat_gateway.ngw1.id
#   }
#   tags = {
#     Name = var.rt2_name
#   }
# }

# resource "aws_route_table_association" "rtpriv" {
#   route_table_id = aws_route_table.rt2.id
#   subnet_id      = aws_subnet.pubsubnet1.id
# }