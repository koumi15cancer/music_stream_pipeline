terraform {
  required_version = ">=1.0"
  required_providers {
    infisical = {
      source = "infisical/infisical"
    }
  }
}

provider "infisical" {
  host          = "https://app.infisical.com" # Only required if using self hosted instance of Infisical, default is https://app.infisical.com
  service_token = var.infiscal_token # Get token https://infisical.com/docs/documentation/platform/token
}


data "infisical_secrets" "my-secrets" {
  env_slug    = "dev"
  folder_path = "/"
}