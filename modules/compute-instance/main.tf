resource "google_service_account" "default" {
  account_id   = var.name
  display_name = "Service Account for ${var.name}"
}

resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = "e2-medium"
  zone         = "us-west2-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = var.metadata_startup_script

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}