terraform {
  backend "s3" {
    bucket = "tfstate-ibm-lab-donald-2026"
    key    = "ibm-cloud-terraform-lab/terraform.tfstate"
    region = "eu-de"

    endpoints = {
      s3 = "https://s3.eu-de.cloud-object-storage.appdomain.cloud"
    }

    use_path_style = true
    use_lockfile   = true

    skip_credentials_validation = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
  }
}

