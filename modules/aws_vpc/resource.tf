resource "aws_vpc" "my_vpc" {
    cidr_block = var.myVpc

    tags = var.vpc_tag
    }
    
