resource "random_password" "db_user_psw" {
  for_each         = var.enable ? toset(var.user_prefix) : []
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "google_sql_user" "db_user" {
  for_each = var.enable ? toset(var.user_prefix) : []
  name     = "${each.key}"
  instance = google_sql_database_instance.this.name
  password = random_password.db_user_psw[each.key].result
}