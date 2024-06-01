resource "google_compute_network" "mynetworks" {
  count = var.vpc_networks
  name  = var.vpc_names[count.index]
  # name="project1"
  description = "my new vpc networks"

}