# resource "aws_vpc" "vpc-ter" {
#   cidr_block = "10.0.0.0/16"
# }
# resource "aws_subnet" "public-sub-ter" {
#   vpc_id     = aws_vpc.vpc-ter.id
#   cidr_block = var.cidr[count.index]
#   availability_zone=
#   tags = {
#     Name = "public-subnet1"
#   }
# }
# resource "aws_subnet" "public-sub-ter" {
#   vpc_id     = aws_vpc.vpc-ter.id
#   cidr_block = var.cidr[count.index]
#   availability_zone= var.az[count.index]
#   tags = {
#     Name = "public-subnet2"
#   }
# }
# resource "aws_subnet" "private-sub-ter" {
#   vpc_id     = aws_vpc.vpc-ter.id
#   cidr_block = "10.0.3.0/24"
#   availability_zone= "us-east-1"

#   tags = {
#     Name = "private-subnet"
#   }
# }
