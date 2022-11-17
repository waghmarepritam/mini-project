module "vpc" {
   source = "./modules/aws_vpc"
   myVpc = var.myVpc
   vpc_tag = var.vpc_tag
 }

 module "subnet" {
    source = "./modules/aws_subnet"
    vpc_id = module.vpc.tf_vpc
    subnet_cidr = var.subnet_cidr
    subnet_name = var.subnet_name
 }

 module "nic" {
    source = "./modules/aws_nic"
    subnet_id = module.subnet.subnet_id
    private_ip = var.private_ip
    nic_name = var.nic_name
    nic_name1 = var.nic_name1
 }

 module "instance" {
    source = "./modules/aws_instance"
    instance-ami = var.instance-ami 
    instance-type = var.instance-type
    instance-name = var.instance-name
    nic_id = module.nic.my_nic
 }

 module "instance_east-1" {
   providers = {
      aws = aws.east-1
   }
    source = "./modules/aws_instance"
    instance-ami-2 = var.instance-ami-2 
    instance-type = var.instance-type
    instance-name = var.instance-name
    nic_id_1 = module.nic.my_nic1
 }