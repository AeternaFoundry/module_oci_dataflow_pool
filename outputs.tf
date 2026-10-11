output "dataflow_pools_id" {
  description = "Map of id values across all dataflow_pools, keyed the same as var.dataflow_pools except keys with no id are omitted"
  value       = { for k, v in oci_dataflow_pool.dataflow_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dataflow_pools_compartment_id" {
  description = "Map of compartment_id values across all dataflow_pools, keyed the same as var.dataflow_pools except keys with no compartment_id are omitted"
  value       = { for k, v in oci_dataflow_pool.dataflow_pools : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "dataflow_pools_configurations" {
  description = "Map of configurations values across all dataflow_pools, keyed the same as var.dataflow_pools except keys with no configurations are omitted"
  value       = { for k, v in oci_dataflow_pool.dataflow_pools : k => v.configurations if v.configurations != null && length(v.configurations) > 0 }
}
output "dataflow_pools_defined_tags" {
  description = "Map of defined_tags values across all dataflow_pools, keyed the same as var.dataflow_pools except keys with no defined_tags are omitted"
  value       = { for k, v in oci_dataflow_pool.dataflow_pools : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "dataflow_pools_description" {
  description = "Map of description values across all dataflow_pools, keyed the same as var.dataflow_pools except keys with no description are omitted"
  value       = { for k, v in oci_dataflow_pool.dataflow_pools : k => v.description if v.description != null && length(v.description) > 0 }
}
output "dataflow_pools_display_name" {
  description = "Map of display_name values across all dataflow_pools, keyed the same as var.dataflow_pools except keys with no display_name are omitted"
  value       = { for k, v in oci_dataflow_pool.dataflow_pools : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dataflow_pools_freeform_tags" {
  description = "Map of freeform_tags values across all dataflow_pools, keyed the same as var.dataflow_pools except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_dataflow_pool.dataflow_pools : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "dataflow_pools_idle_timeout_in_minutes" {
  description = "Map of idle_timeout_in_minutes values across all dataflow_pools, keyed the same as var.dataflow_pools except keys with no idle_timeout_in_minutes are omitted"
  value       = { for k, v in oci_dataflow_pool.dataflow_pools : k => v.idle_timeout_in_minutes if v.idle_timeout_in_minutes != null }
}
output "dataflow_pools_lifecycle_details" {
  description = "Map of lifecycle_details values across all dataflow_pools, keyed the same as var.dataflow_pools except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_dataflow_pool.dataflow_pools : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "dataflow_pools_owner_principal_id" {
  description = "Map of owner_principal_id values across all dataflow_pools, keyed the same as var.dataflow_pools except keys with no owner_principal_id are omitted"
  value       = { for k, v in oci_dataflow_pool.dataflow_pools : k => v.owner_principal_id if v.owner_principal_id != null && length(v.owner_principal_id) > 0 }
}
output "dataflow_pools_owner_user_name" {
  description = "Map of owner_user_name values across all dataflow_pools, keyed the same as var.dataflow_pools except keys with no owner_user_name are omitted"
  value       = { for k, v in oci_dataflow_pool.dataflow_pools : k => v.owner_user_name if v.owner_user_name != null && length(v.owner_user_name) > 0 }
}
output "dataflow_pools_pool_metrics" {
  description = "Map of pool_metrics values across all dataflow_pools, keyed the same as var.dataflow_pools except keys with no pool_metrics are omitted"
  value       = { for k, v in oci_dataflow_pool.dataflow_pools : k => v.pool_metrics if v.pool_metrics != null && length(v.pool_metrics) > 0 }
}
output "dataflow_pools_schedules" {
  description = "Map of schedules values across all dataflow_pools, keyed the same as var.dataflow_pools except keys with no schedules are omitted"
  value       = { for k, v in oci_dataflow_pool.dataflow_pools : k => v.schedules if v.schedules != null && length(v.schedules) > 0 }
}
output "dataflow_pools_state" {
  description = "Map of state values across all dataflow_pools, keyed the same as var.dataflow_pools except keys with no state are omitted"
  value       = { for k, v in oci_dataflow_pool.dataflow_pools : k => v.state if v.state != null && length(v.state) > 0 }
}
output "dataflow_pools_time_created" {
  description = "Map of time_created values across all dataflow_pools, keyed the same as var.dataflow_pools except keys with no time_created are omitted"
  value       = { for k, v in oci_dataflow_pool.dataflow_pools : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "dataflow_pools_time_updated" {
  description = "Map of time_updated values across all dataflow_pools, keyed the same as var.dataflow_pools except keys with no time_updated are omitted"
  value       = { for k, v in oci_dataflow_pool.dataflow_pools : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

