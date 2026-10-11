resource "oci_dataflow_pool" "dataflow_pools" {
  for_each = var.dataflow_pools

  compartment_id          = each.value.compartment_id
  display_name            = each.value.display_name
  defined_tags            = each.value.defined_tags
  description             = each.value.description
  freeform_tags           = each.value.freeform_tags
  idle_timeout_in_minutes = each.value.idle_timeout_in_minutes
  state                   = each.value.state

  dynamic "configurations" {
    for_each = each.value.configurations
    content {
      max   = configurations.value.max
      min   = configurations.value.min
      shape = configurations.value.shape
      dynamic "shape_config" {
        for_each = configurations.value.shape_config != null ? [configurations.value.shape_config] : []
        content {
          memory_in_gbs = shape_config.value.memory_in_gbs
          ocpus         = shape_config.value.ocpus
        }
      }
    }
  }

  dynamic "schedules" {
    for_each = each.value.schedules != null ? each.value.schedules : []
    content {
      day_of_week = schedules.value.day_of_week
      start_time  = schedules.value.start_time
      stop_time   = schedules.value.stop_time
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

