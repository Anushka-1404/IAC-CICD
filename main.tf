provider "google" {
  credentials = file("iac-cicd-cred.json")
  project     = "iac-cicd-401602"
  region      = "us-west1"
  zone        = "us-west1-c"
}

resource "google_compute_instance" "my-server" {
  name         = "my-gcp-server"
  machine_type = "e2-medium"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
    access_config {}
  }
}