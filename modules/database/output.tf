output "db_user_psw" {
  value = {for key, value in random_password.db_user_psw : key => value.result}
}