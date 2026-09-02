resource "ibm_resource_instance" "monitoring" {
  name              = "monitoring-ibm-lab"
  service           = "sysdig-monitor"
  plan              = "lite"
  location          = var.region
  resource_group_id = data.ibm_resource_group.lab.id
  tags              = ["managed-by:terraform"]

  parameters = {
    default_receiver  = true
    external_api_auth = "IAM_ONLY"
  }
}
