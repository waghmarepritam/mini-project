variable "myVpc" {
    type = string 
    default = "172.16.0.0/16"
 }

 variable "vpc_tag" {
    type = map(any) 
    default = {
        "Name" = "tf-vpc"
    }
 }




 variable "subnet_cidr" {
    type = string
    default = "172.16.1.0/24"
 }

  variable "subnet_name" {
    type = map(any)
    default = {
        "Name" = "My-subnet"
    }
 }
  variable "private_ip" {
    type = list(string)
    default = ["172.16.1.200"]   
 }

 variable "nic_name" {
    type = map(any)
    default ={
     "Name"= "my_nic"
 }
 }

 variable "instance-name" {
    type = map(any)
    default = {
        "Name" = "dev-Server"
     }
 }

 variable "instance-ami" {
    type = string
    default = "ami-097a2df4ac947655f"
        
 }

 
 variable "instance-type" {
    type = string
    default = "t2.micro"
        
 }

 variable "instance-ami-2" {
    type = string
    default = "ami-08c40ec9ead489470"
        
 }

 variable "nic_name1" {
    type = map(any)
    default ={
      "Name" ="my_nic1"
    }
 }