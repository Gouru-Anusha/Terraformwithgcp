terraform {
    backend "gcs"{
        bucket = "gcptfpractice"
        prefix="terraform/state"
    }


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



output "vpcid" {
  description = "vpcid will be dispalyed on the screen"
  value       = "google_compute_network.vpc_network.id"

}