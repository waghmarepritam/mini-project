variable "instance-name" {
    type = map(any)
    default = {
        Name = "dev-Server"
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

 variable "nic_id" {
    type = string
 }
 
 variable "instance-ami-2" {
    type = string
    default = "ami-08c40ec9ead489470"
 }

 variable "nic_id_1" {
    type = string
 }