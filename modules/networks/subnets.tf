resource "google_compute_subnetwork" "app_subnet" {
  count         = var.enable ? 1 : 0 
  name          = "${google_compute_network.this[0].name}_app_subnet"
  ip_cidr_range = local.app_subnet_cidr_range
  region        = var.region
  network       = google_compute_network.this[0].self_link
}

resource "google_compute_subnetwork" "db_subnet" {
  count         = var.enable ? 1 : 0 
  name          = "${google_compute_network.this[0].name}_db_subnet"
  ip_cidr_range = local.db_subnet_cidr_range
  region        = var.region
  network       = google_compute_network.this[0].self_link
}