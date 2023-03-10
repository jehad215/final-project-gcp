resource "google_compute_instance" "private-vm" {
  name = "private-vmm"
  machine_type = "e2-micro"
  zone = "us-east4-c"

  depends_on = [
    google_container_cluster.private-cluster
   , google_container_node_pool.node-pool
  ]

  service_account {
    email = google_service_account.new-svc.email
    scopes = ["https://www.googleapis.com/auth/cloud-platform" ]
  }
  
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size = 50
    }
  }
 
  network_interface {
    network = google_compute_network.vpc-final.id
    subnetwork = google_compute_subnetwork.management_subnet.id
  }

}
