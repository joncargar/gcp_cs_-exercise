resource "google_sql_database" "app_db" {
  name     = "${google_sql_database_instance.this.name}_app_db"
  instance = google_sql_database_instance.this.name
}