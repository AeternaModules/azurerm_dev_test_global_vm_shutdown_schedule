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
    enabled               = optional(bool) # Default: true
    tags                  = optional(map(string))
    notification_settings = object({
      email           = optional(string)
      enabled         = bool
      time_in_minutes = optional(number) # Default: 30
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
  # --- Unconfirmed validation candidates, derived from azurerm_dev_test_global_vm_shutdown_schedule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: virtual_machine_id
  #   source:    [from commonids.ValidateVirtualMachineID] !ok
  # path: virtual_machine_id
  #   source:    [from commonids.ValidateVirtualMachineID] err != nil
  # path: timezone
  #   source:    computeValidate.VirtualMachineTimeZoneCaseInsensitive: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

