locals {
  env = substr("${terraform.workspace}", 27, -1)
}

resource "google_storage_bucket" "example" {
  name          = "example-bucket-${local.env}"
  location      = "asia-northeast1"
}
