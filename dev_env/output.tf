output "app_instance_ip" {
  value = module.instances.app_instance_ip
}

output "db_user_psw" {
  value       = module.database.db_root_user_psw
  sensitive   = true
}