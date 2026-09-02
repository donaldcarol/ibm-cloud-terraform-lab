resource "ibm_is_security_group_rule" "outbound_all" {
  group      = ibm_is_security_group.lab.id
  direction  = "outbound"
  ip_version = "ipv4"
  protocol   = "any"
  remote     = "0.0.0.0/0"

}


resource "ibm_is_security_group_rule" "ping_from_anywhere" {
  group      = ibm_is_security_group.lab.id
  direction  = "inbound"
  ip_version = "ipv4"
  protocol   = "icmp"
  remote     = "0.0.0.0/0"
  type       = 8
  code       = 0

}



resource "ibm_is_security_group_rule" "ssh_from_admin" {
  group      = ibm_is_security_group.lab.id
  direction  = "inbound"
  ip_version = "ipv4"
  protocol   = "tcp"
  remote     = var.admin_cidr
  port_min   = 22
  port_max   = 22

}

resource "ibm_is_security_group_rule" "ssh_from_subnet1" {
  group      = ibm_is_security_group.lab.id
  direction  = "inbound"
  ip_version = "ipv4"
  protocol   = "tcp"
  remote     = ibm_is_subnet.lab1.ipv4_cidr_block
  port_min   = 22
  port_max   = 22

}


