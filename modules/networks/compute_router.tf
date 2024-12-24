resource "google_compute_router" "this" {
  count   = var.enable ? 1 : 0 
  name    = "${google_compute_network.this[0].name}_rout"
  network = google_compute_network.this[0].self_link
  region  = var.region
}