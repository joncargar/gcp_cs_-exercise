locals {
  app_subnet_cidr_range           = "10.0.0.0/24"
  db_subnet_cidr_range            = "10.1.0.0/24"
  anywhere_cidr                   = "0.0.0.0/0"
  app_ssh_firewall_allowed_range  = [local.anywhere_cidr]
  ssh_ports                       = ["22"]
  http_firewall_allowed_range     = [local.anywhere_cidr]
  http_ports                      = ["80"]
  https_firewall_allowed_range    = [local.anywhere_cidr]
  https_ports                     = ["443"]
  db_firewall_allowed_range       = [local.app_subnet_cidr_range] 
  db_ports                        = ["5432"]
}