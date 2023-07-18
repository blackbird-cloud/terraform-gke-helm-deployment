output "deployment" {
  value       = module.helm_release.deployment
  sensitive   = true
  description = "The installed Helm release."
}
