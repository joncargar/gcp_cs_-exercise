output "app_subnet_self_link" {
  value = google_compute_subnetwork.app_subnet[0].self_link
}

output "db_subnet_self_link" {
  value = google_compute_subnetwork.db_subnet[0].self_link
}