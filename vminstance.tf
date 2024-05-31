resource "google_service_account" "service_account" {
  account_id   = "sa-anusha"
  display_name = "service_account for vminstance"
}


resource "google_compute_instance" "webserver" {
  name         = var.vminstance
  machine_type = "n2-standard-2"
  zone         = var.zone


  tags = ["demo", "learn"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      #image = "ubuntu-os-cloud/ubuntu-2004-focal-v20220712"
      labels = {
        my_label = "value"
      }
      size = 32
      # auto_delete = false
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    #network = "default"
    network = google_compute_network.vpc_network.id
    #network = vpcid

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    env = "dev"
  }
}