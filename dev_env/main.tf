locals {
  environment = "dev"
}

module "networks" {
    source = "./modules/networks"

    vpc_name = "${local.environment}-${var.project_id}"
    region   = var.region
}

module "instances" {
    source = "./modules/instances"

    name   = "${local.environment}-${var.project_id}"
    region = var.region
    machine_type = "e2-medium"
    image = "debian-cloud/debian-11"
    app_subnet_self_link = module.network.app_subnet_self_link
}

module "database" {
    source = "./modules/database"

    name   = "${local.environment}-${var.project_id}"
    region = var.region
    database_version = "POSTGRES_13"
    database_tier = "db-f1-micro"
    db_subnet_self_link = module.network.db_subnet_self_link
    user_prefix = ["root_db_user"]
}

