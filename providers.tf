terraform {
  required_providers {
    rafay = {
      source = "app.terraform.io/rafay-demo/rafay"
      version = "1.1.26"
    }
  }
}

provider "rafay" {
  provider_config_file = var.rafay_config_file
}
