variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}
variable "availability_domain" {}

variable "compartment_ocid" {}
variable "ssh_public_key_path" {}
variable "ssh_private_key_path" {}

locals {
  ssh_public_key = "${file("${var.ssh_public_key_path}")}"
  ssh_private_key = "${file("${var.ssh_private_key_path}")}"
}

variable "boot_instance_shape" {
  default = "VM.Standard2.1"
}

variable "display_name" {
  default = "MesosBootNode"
}
