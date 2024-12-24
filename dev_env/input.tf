variable "project_id" {
    type    = string
    default = "couchsurfingexercise"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "credentials_file" {
  type    = string
}
variable "state_bucket_name" {
  type    = string
  default = "couchsurfingexercise_state"
}