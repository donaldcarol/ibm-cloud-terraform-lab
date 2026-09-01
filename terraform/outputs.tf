output "resource_group_name" {
  value = data.ibm_resource_group.lab.name
}


output "resource_group_id" {
  value = data.ibm_resource_group.lab.id
}

output "vpc_name" {
  value = ibm_is_vpc.lab.name
}

output "vpc_id" {
  value = ibm_is_vpc.lab.id
}

output "subnet1_name" {
  value = ibm_is_subnet.lab1.name
}

output "subnet1_id" {
  value = ibm_is_subnet.lab1.id
}

output "subnet2_name" {
  value = ibm_is_subnet.lab2.name
}

output "subnet2_id" {
  value = ibm_is_subnet.lab2.id
}

output "security_group_name" {
  value = ibm_is_security_group.lab.name
}

output "security_group_id" {
  value = ibm_is_security_group.lab.id
}

output "ssh_key_id" {
  value = ibm_is_ssh_key.lab.id
}

output "vm1_floating_ip" {
  value = ibm_is_floating_ip.lab1.address
}
