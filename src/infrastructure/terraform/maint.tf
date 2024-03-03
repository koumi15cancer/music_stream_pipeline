terraform {
  required_version = ">=1.0"
  backend "local" {}
  required_providers {
    google = {
      source = "hashicorp/google"
    }
    infisical = {
      source = "infisical/infisical"
    }
    upstash = {
      source = "upstash/upstash"
    }
  }
}

/*  provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
  // credentials = file(var.credentials)  # Use this if you do not want to set env-var GOOGLE_APPLICATION_CREDENTIALS
}

*/

module "infiscal" {
  source = "./modules/infiscal"
  infiscal_token = var.infiscal_token
}
 
module "supbase" {
  source   = "./modules/supbase"
}

module "upstash" {
  source   = "./modules/upstash"
  registered_email = var.registered_email
  api_key = module.infiscal.upstash_key
}

