module "ubuntuec2" {

  source = "./modules/ubuntuvm"
  size = var.size
  ubuntuami = var.ubuntuami
  publicsubnet = var.publicsubnet
  keypair = var.keypair
 
}

output publicIP {

value = module.ubuntuec2.PublicIP

}