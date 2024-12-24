resource "google_compute_router_nat" "this" {
  count                              = var.enable ? 1 : 0 
  name                               = "${google_compute_network.this[0].name}_rout_nat"
  router                             = google_compute_router.this[0].name
  region                             = var.region
  nat_ip_allocate_option             = var.nat_ip_allocate_option
  source_subnetwork_ip_ranges_to_nat = var.source_subnetwork_ip_ranges_to_nat
}