variable "subnet_id" {
    type = string
 }

 variable "private_ip" {
    type = list(string)
    default = ["10.0.0.50"]   
 }

 variable "nic_name" {
    type = map(any)
    default ={
      "Name" ="my_nic"
    }
 }


  variable "nic_name1" {
    type = map(any)
    default ={
      "Name" ="my_nic1"
    }
 }