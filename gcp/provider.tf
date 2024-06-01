terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.25.0"
    }
  }
}



provider "google" {
  # Configuration options
  # credentials = file("myaccount.json")
  project = "firstproject-01-417610"
  region  = "us-west4"
  zone    = "us-west4-b"
}
