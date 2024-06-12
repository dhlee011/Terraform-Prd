variable "prd_vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}


variable "prd_subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}


variable "prd_az" {
  description = "Availability zone for the subnet"
  type        = string
}

variable "prd_sg_ingress_port" {
  description = "SG_port"
  type        = number
}

variable "prd_sg_ingress_cidr_block" {
  description = "SG_port"
  type        = list(string)
}

variable "prd_ami" {
  description = "AMI"
  type        = string
}

variable "prd_ec2_type" {
  description = "ec2_type"
  type        = string
}



