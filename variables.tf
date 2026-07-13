variable "dev_test_global_vm_shutdown_schedules" {
  description = <<EOT
Map of dev_test_global_vm_shutdown_schedules, attributes below
Required:
    - daily_recurrence_time
    - location
    - timezone
    - virtual_machine_id
    - notification_settings (block):
        - email (optional)
        - enabled (required)
        - time_in_minutes (optional)
        - webhook_url (optional)
Optional:
    - enabled
    - tags
EOT

  type = map(object({
    daily_recurrence_time = string
    location              = string
    timezone              = string
    virtual_machine_id    = string
    enabled               = optional(bool)
    tags                  = optional(map(string))
    notification_settings = object({
      email           = optional(string)
      enabled         = bool
      time_in_minutes = optional(number)
      webhook_url     = optional(string)
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.dev_test_global_vm_shutdown_schedules : (
        can(regex("^(0[0-9]|1[0-9]|2[0-3]|[0-9])[0-5][0-9]$", v.daily_recurrence_time))
      )
    ])
    error_message = "Time of day must match the format HHmm where HH is 00-23 and mm is 00-59"
  }
  validation {
    condition = alltrue([
      for k, v in var.dev_test_global_vm_shutdown_schedules : (
        v.notification_settings.time_in_minutes == null || (v.notification_settings.time_in_minutes >= 15 && v.notification_settings.time_in_minutes <= 120)
      )
    ])
    error_message = "must be between 15 and 120"
  }
  validation {
    condition = alltrue([
      for k, v in var.dev_test_global_vm_shutdown_schedules : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

