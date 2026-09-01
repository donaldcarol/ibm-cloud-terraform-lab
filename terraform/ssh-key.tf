resource "ibm_is_ssh_key" "lab" {
  name           = var.ssh_key_name
  public_key     = file(var.ssh_public_key_path)
  type           = "ed25519"
  resource_group = data.ibm_resource_group.lab.id
}   