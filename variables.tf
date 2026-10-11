variable "dataflow_pools" {
  description = <<EOT
Map of dataflow_pools, attributes below
Required:
    - compartment_id
    - display_name
    - configurations (block):
        - max (optional)
        - min (optional)
        - shape (optional)
        - shape_config (optional, block):
            - memory_in_gbs (optional)
            - ocpus (optional)
Optional:
    - defined_tags
    - description
    - freeform_tags
    - idle_timeout_in_minutes
    - state
    - schedules (block):
        - day_of_week (optional)
        - start_time (optional)
        - stop_time (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id          = string
    display_name            = string
    defined_tags            = optional(map(string))
    description             = optional(string)
    freeform_tags           = optional(map(string))
    idle_timeout_in_minutes = optional(number)
    state                   = optional(string)
    configurations = list(object({
      max   = optional(number)
      min   = optional(number)
      shape = optional(string)
      shape_config = optional(object({
        memory_in_gbs = optional(number)
        ocpus         = optional(number)
      }))
    }))
    schedules = optional(list(object({
      day_of_week = optional(string)
      start_time  = optional(number)
      stop_time   = optional(number)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dataflow_pools : (
        length(v.configurations) >= 1
      )
    ])
    error_message = "Each configurations list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.dataflow_pools : (
        v.state == null || (contains([for v in ["ACCEPTED", "SCHEDULED", "CREATING", "ACTIVE", "STOPPING", "STOPPED", "UPDATING", "DELETING", "DELETED", "FAILED"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"ACCEPTED\", \"SCHEDULED\", \"CREATING\", \"ACTIVE\", \"STOPPING\", \"STOPPED\", \"UPDATING\", \"DELETING\", \"DELETED\", \"FAILED\""
  }
}

