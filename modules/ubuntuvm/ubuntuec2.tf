resource "aws_instance" "ubuntumod" {
  ami           = var.ubuntuami
  instance_type = var.size
  subnet_id = var.publicsubnet
  vpc_security_group_ids = ["sg-067695ed1d62ab368"]
  //security_groups = ["sg-067695ed1d62ab368"]
  key_name = var.keypair  //key pair is created in seperate script keypair-tf folder
  //host_id = var.hostid
 associate_public_ip_address          = true 

  tags = {
    Name = "EC2-Ubuntu-Mod-Pipeline-1"
  }
}
 
