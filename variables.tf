variable "database_exadata_infrastructure_computes" {
  description = <<EOT
Map of database_exadata_infrastructure_computes, attributes below
Required:
    - exadata_infrastructure_id
Optional:
    - activation_file
    - additional_compute_count_compute_managed_resource
    - additional_compute_system_model_compute_managed_resource
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    exadata_infrastructure_id                                = string
    activation_file                                          = optional(string)
    additional_compute_count_compute_managed_resource        = optional(number)
    additional_compute_system_model_compute_managed_resource = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

