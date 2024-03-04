terraform {
  required_providers {
    rafay = {
      source = "app.terraform.io/rafay-test-private/rafay"
      version = "1.1.25"
    }
  }
}

provider "rafay" {
  provider_config_file = var.rafay_config_file
}
