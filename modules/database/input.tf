variable "enable" {
  type    = bool
  default = true
}

variable "region" {
  type = string
}

variable "name" {
  type = string
}

variable "database_version" {
  type = string
}

variable "database_tier" {
  type = string
}

variable "db_subnet_self_link" {
  type = string
}

variable "user_prefix" {
  type = list(any)
}