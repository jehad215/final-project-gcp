resource "google_compute_network" "vpc-final" {
  name = "vpc-final"
  project = "jehad-iti"
  auto_create_subnetworks = false
  routing_mode = "REGIONAL"
}