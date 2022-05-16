output "workspace" {
  description = "Show the name of the workspace."
  value       = terraform.workspace
}

output "amount_of_machines" {
  description = "The number of machines to create."
  value       = local.amount_of_machines
}
