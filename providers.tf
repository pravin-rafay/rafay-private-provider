terraform {
  required_providers {
    rafay = {
     version = ">= 0.1"
     #source = "app.terraform.io/rafay-demo/rafay"
     #source = "registry.terraform.io/RafaySystems/rafay"
     source = "registry.terraform.io/Rafay/rafay"
    }
  }
}

provider "rafay" {
  provider_config_file = var.rafay_config_file
}
