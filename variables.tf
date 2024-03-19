variable "az"{
    type = string
    default = "us-east-1"
}
# variable "cidr"{
#     type = list
#     default = ["10.0.1.0/24", "10.0.2.0/24"]
# }
variable "bucket_name"{
    default= "lana-s3bucket-terraform"
}