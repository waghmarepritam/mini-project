 resource "aws_network_interface" "test" {
  subnet_id       = var.subnet_id
  private_ips     = var.private_ip
  
  tags = var.nic_name
}

resource "aws_network_interface" "test1" {
  subnet_id       = var.subnet_id
  private_ips     = var.private_ip
  
  tags = var.nic_name1
}