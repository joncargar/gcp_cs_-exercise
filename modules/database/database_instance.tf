resource "google_sql_database_instance" "this" {
  count            = var.enable ? 1 : 0 
  name             = var.name
  region           = var.region
  database_version = var.database_version

  settings {
    tier = var.database_tier
    ip_configuration {
      ipv4_enabled    = false
      private_network = var.db_subnet_self_link
    }
  }
}