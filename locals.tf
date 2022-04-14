locals {
  # This defines workspace names and their number of machines.
  _amount_of_machines = {
    default     = 2
    development = 1
    production  = 4
  }
  # This maps the name of the workspace to the number from the map above.
  amount_of_machines = local._amount_of_machines[terraform.workspace]

  # A map to relate the workspace to a project.
  # _workspace_projects_map = {
  #   default     = "roberts-project-23"
  #   development = "DOES_NOT_EXIST"
  # }
  # project = local._workspace_projects_map[terraform.workspace]
}
