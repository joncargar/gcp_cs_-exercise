resource "google_compute_firewall" "allow_ssh" {
  count   = var.enable ? 1 : 0   
  name    = "${google_compute_network.this[0].name}_app_ssh_firewall"
  network = google_compute_network.this[0].self_link

  allow {
    protocol = "tcp"
    ports    = local.ssh_ports
  }
  source_ranges = local.app_ssh_firewall_allowed_range
}

resource "google_compute_firewall" "allow_http" {
  count   = var.enable ? 1 : 0 
  name    = "${google_compute_network.this[0].name}_app_http_firewall"
  network = google_compute_network.this[0].self_link

  allow {
    protocol = "tcp"
    ports    = local.http_ports
  }
  source_ranges = local.http_firewall_allowed_range
}

resource "google_compute_firewall" "allow_https" {
  count   = var.enable ? 1 : 0 
  name    = "${google_compute_network.this[0].name}_app_https_firewall"
  network = google_compute_network.main_vpc.self_link

  allow {
    protocol = "tcp"
    ports    = local.https_ports
  }

  source_ranges = local.https_firewall_allowed_range
}

resource "google_compute_firewall" "allow_db" {
  count   = var.enable ? 1 : 0 
  name    = "${google_compute_network.this[0].name}_db_firewall"
  network = google_compute_network.this[0].self_link

  allow {
    protocol = "tcp"
    # PostgreSQL default port
    ports    = local.db_ports
  }
  
# Only allow traffic from the app subnet
  source_ranges = local.db_firewall_allowed_range
}