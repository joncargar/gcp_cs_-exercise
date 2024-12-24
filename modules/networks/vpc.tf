resource "google_compute_network" "this" {
  count                   = var.enable ? 1 : 0  
  name                    = var.vpc_name
  auto_create_subnetworks = false
}