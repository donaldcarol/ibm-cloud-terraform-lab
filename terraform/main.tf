data "ibm_resource_group" "lab" {
  name = var.resource_group_name
}


resource "ibm_is_vpc" "lab" {
  name           = var.vpc_name
  resource_group = data.ibm_resource_group.lab.id

}

resource "ibm_is_subnet" "lab1" {
  name            = var.subnet1_name
  vpc             = ibm_is_vpc.lab.id
  resource_group  = data.ibm_resource_group.lab.id
  zone            = var.subnet1_zone
  ipv4_cidr_block = var.subnet1_cidr
}

resource "ibm_is_subnet" "lab2" {
  name            = var.subnet2_name
  vpc             = ibm_is_vpc.lab.id
  resource_group  = data.ibm_resource_group.lab.id
  zone            = var.subnet2_zone
  ipv4_cidr_block = var.subnet2_cidr
}

resource "ibm_is_security_group" "lab" {
  name           = var.security_group_name
  vpc            = ibm_is_vpc.lab.id
  resource_group = data.ibm_resource_group.lab.id
}

resource "ibm_is_floating_ip" "lab1" {
  name           = "fip-ibm-lab-1"
  resource_group = data.ibm_resource_group.lab.id

  target = ibm_is_instance.lab1.primary_network_interface[0].id

}

