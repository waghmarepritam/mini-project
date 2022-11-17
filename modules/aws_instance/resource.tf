 resource "aws_instance" "web" {
  ami           = var.instance-ami 
  instance_type = var.instance-type

  network_interface {
    network_interface_id = var.nic_id
    device_index         = 0
  }
  tags = var.instance-name
  }

resource "aws_instance" "web1" {
  ami           = var.instance-ami-2 
  instance_type = var.instance-type

  network_interface {
    network_interface_id = var.nic_id_1
    device_index         = 0
  }
  tags = var.instance-name1
  }
