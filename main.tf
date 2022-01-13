terraform {
  backend "remote" {
    organization = "jefflance10_test_terraform"
    workspaces {
      name = "learn-terraform-pipelines-k8s"
    }
  }
required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.55"
    }
}

required_version = ">= 1.1.0"
}



provider "google" {
  project = var.google_project
  region  = var.region
}
