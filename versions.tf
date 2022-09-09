terraform {
  required_version = ">= 1"
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "2.6.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "4.34.0"
    }
  }
}
