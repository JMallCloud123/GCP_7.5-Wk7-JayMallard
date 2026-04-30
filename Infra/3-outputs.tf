output "vpc_name" {
  description = "vpc"
  value       = google_compute_network.main.name
}

