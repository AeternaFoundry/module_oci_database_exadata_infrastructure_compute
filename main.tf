resource "oci_database_exadata_infrastructure_compute" "database_exadata_infrastructure_computes" {
  for_each = var.database_exadata_infrastructure_computes

  exadata_infrastructure_id                                = each.value.exadata_infrastructure_id
  activation_file                                          = each.value.activation_file
  additional_compute_count_compute_managed_resource        = each.value.additional_compute_count_compute_managed_resource
  additional_compute_system_model_compute_managed_resource = each.value.additional_compute_system_model_compute_managed_resource

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

