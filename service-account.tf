resource "google_project_iam_custom_role" "final-customrole" {
  role_id = "myCustomRole"
  title = "custom Role"
  description = "A description"
  permissions = ["compute.projects.get", "compute.instances.get", "resourcemanager.projects.get", "storage.buckets.get", "storage.buckets.list" , "storage.objects.get" , "storage.objects.list" , "container.deployments.get" , "container.deployments.create" , "container.deployments.list" , "container.services.list" , "container.services.get" , "container.services.create" , "container.clusters.list" , "container.clusters.getCredentials" , "container.clusters.get" , "container.pods.list" ,"container.nodes.list" , ]
}

resource "google_service_account" "new-svc" {
  account_id = "new-svc"
  project = "jehad-iti"
}

resource "google_project_iam_binding" "new-svc-iam" {
  project = "jehad-iti"
  role = "roles/storage.admin"
  members = [
  "serviceAccount:${google_service_account.new-svc.email}"
  ]
}
resource "google_project_iam_binding" "new-svc-iam2" {
  project = "jehad-iti"
  role = "projects/${google_service_account.new-svc.project}/roles/${google_project_iam_custom_role.final-customrole.role_id}"
  members = [
    "serviceAccount:${google_service_account.new-svc.email}"
  ]
}
