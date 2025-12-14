output "project_id" {
  description = "The unique ID of the created project"
  value       = google_project.sandbox_infra.project_id
}

output "project_number" {
  description = "The numeric identifier of the project"
  value       = google_project.sandbox_infra.number
}

output "project_console_url" {
  description = "Link to the Project Dashboard in Google Cloud Console"
  value       = "https://console.cloud.google.com/home/dashboard?project=${google_project.sandbox_infra.project_id}"
}
