variable "resource_group_name" {
  description = "IBM Resource Group name"
  type        = string
  default     = "rg-ibm-lab"
}

variable "region" {
  description = "IBM region"
  type        = string
  default     = "eu-de"
}

variable "vpc_name" {
  description = "IBM VPC name"
  type        = string
  default     = "vpc-ibm-lab"

}

variable "subnet1_name" {
  description = "IBM Subnet 1 name"
  type        = string
  default     = "subnet-ibm-lab-1"
}

variable "subnet2_name" {
  description = "IBM Subnet 2 name"
  type        = string
  default     = "subnet-ibm-lab-2"
}

variable "subnet1_cidr" {
  description = "IBM Subnet 1 CIDR block"
  type        = string
  default     = "10.243.0.0/24"
}

variable "subnet2_cidr" {
  description = "IBM Subnet 2 CIDR block"
  type        = string
  default     = "10.243.64.0/24"
}

variable "subnet1_zone" {
  description = "IBM Subnet 1 zone"
  type        = string
  default     = "eu-de-1"
}

variable "subnet2_zone" {
  description = "IBM Subnet 2 zone"
  type        = string
  default     = "eu-de-2"
}

variable "security_group_name" {
  description = "IBM Security Group name"
  type        = string
  default     = "sg-ibm-lab"
}

variable "admin_cidr" {
  description = "IBM Admin CIDR block"
  type        = string
  default     = "188.24.123.179/32"
}

variable "ssh_key_name" {
  description = "IBM SSH Key name"
  type        = string
  default     = "ssh-ibm-lab"
}

variable "ssh_public_key_path" {
  description = "IBM SSH Public Key path"
  type        = string

}

variable "image_name" {
  description = "IBM Image name"
  type        = string
  default     = "ibm-ubuntu-24-04-4-minimal-amd64-7"
}
variable "vm_profile" {
  description = "IBM VM profile"
  type        = string
  default     = "nxf-2x2"
}
variable "vm1_name" {
  description = "IBM Instance name"
  type        = string
  default     = "vm-ibm-lab-1"
}
variable "vm2_name" {
  description = "IBM Instance name"
  type        = string
  default     = "vm-ibm-lab-2"
}
