# resource "aws_subnet" "public-sub-ter" {
#   vpc_id     = aws_vpc.vpc-ter.id
#   cidr_block = var.cidr[count.index]
#   availability_zone= var.az[count.index]
#   count = 2 
#   tags = {
#     Name = "public-subnet"
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

# data "aws_subnets" "sid"{
#     filter{
#         name = "vpc-id"
#         values =[aws.vpc.vpc-ter]
#     }
# tags = {
#     Tier = public 
# }
# }