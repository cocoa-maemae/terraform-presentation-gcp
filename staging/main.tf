terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.49.0"
    }
  }
}

provider "google" {
  credentials = var.google_credentials
  project     = var.project_id
  region      = "asia-northeast1"
  zone        = "asia-northeast1-a"
}

module "cloud-storage" {
  source = "./../module/cloud_storage"
}
