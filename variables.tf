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
}

