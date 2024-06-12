module "prd_network" {
  source = "/terraform/module/aws/network/"
  vpc_cidr_block = var.prd_vpc_cidr_block
  subnet_cidr_block = var.prd_subnet_cidr_block
  az = var.prd_az
}

module "prd_coumpute" {
  source = "/terraform/module/aws/compute/"
  vpc_id = module.prd_network.vpc_id  ## output ID
  sg_ingress_port = var.prd_sg_ingress_port 
  subnet_id = module.prd_network.subnet_id
  sg_ingress_cidr_block = var.prd_sg_ingress_cidr_block
  ami = var.prd_ami
  ec2_type = var.prd_ec2_type
}

