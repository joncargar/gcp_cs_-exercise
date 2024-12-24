resource "google_compute_instance" "app_instance" {
  count        = var.enable ? 1 : 0 
  name         = var.name
  machine_type = var.machine_type
  zone         = "${vav.region}-a"

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    subnetwork           = var.app_subnet_self_link
    access_config {} 
  }

  metadata = {
    ssh-keys = "user:${file("~/.ssh/id_rsa.pub")}" 
  }
}
