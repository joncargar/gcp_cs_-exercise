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

variable "machine_type" {
  type = string
}

variable "image" {
  type = string
}

variable "app_subnet_self_link" {
  type = string
}