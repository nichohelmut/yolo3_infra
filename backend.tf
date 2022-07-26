terraform {
  required_version = ">= 0.14"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.30.0"
    }
  }
  backend "gcs" {
    prefix = "terraform/state"
  }
}
