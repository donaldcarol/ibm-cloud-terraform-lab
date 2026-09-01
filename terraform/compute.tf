data "ibm_is_image" "ubuntu" {
  name = var.image_name



}

resource "ibm_is_instance" "lab1" {
  name = var.vm1_name
  vpc  = ibm_is_vpc.lab.id
  primary_network_interface {
    subnet          = ibm_is_subnet.lab1.id
    security_groups = [ibm_is_security_group.lab.id]
  }
  image   = data.ibm_is_image.ubuntu.id
  profile = var.vm_profile
  zone    = var.subnet1_zone
  boot_volume {
    name    = var.vm1_name
    size    = 100
    profile = "general-purpose"

  }

  resource_group = data.ibm_resource_group.lab.id
  keys           = [ibm_is_ssh_key.lab.id]
}

resource "ibm_is_instance" "lab2" {
  name = var.vm2_name
  vpc  = ibm_is_vpc.lab.id
  primary_network_interface {
    subnet          = ibm_is_subnet.lab2.id
    security_groups = [ibm_is_security_group.lab.id]
  }
  image   = data.ibm_is_image.ubuntu.id
  profile = var.vm_profile
  zone    = var.subnet2_zone
  boot_volume {
    name    = var.vm2_name
    size    = 100
    profile = "general-purpose"

  }

  resource_group = data.ibm_resource_group.lab.id
  keys           = [ibm_is_ssh_key.lab.id]
}
