terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.13.0"
    }
  }
}

provider "google" {
  # Use can use a variable project.
  # project = local.project
  project = "roberts-project-23"
  region  = "us-central1"
}
