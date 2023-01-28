resource "google_compute_router_nat" "final_nat" {
  name = "final-nat"
  router = google_compute_router.final_router.name
  region = "us-east4"
  nat_ip_allocate_option = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetwork {
    name = google_compute_subnetwork.management_subnet.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }
}


