provider "google" {
  project = var.project_id
  region  = var.region
  credentials = file(var.credentials_file)
}

terraform {
  backend "gcs_state" {
    bucket = var.state_bucket_name
    prefix = "terraform/state"
  }
}