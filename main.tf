resource "google_compute_instance" "default" {
  name         = var.name1
  machine_type = var.machine_type
  

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
  
}
