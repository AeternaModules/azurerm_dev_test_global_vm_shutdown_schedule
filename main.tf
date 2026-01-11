resource "azurerm_dev_test_global_vm_shutdown_schedule" "dev_test_global_vm_shutdown_schedules" {
  for_each = var.dev_test_global_vm_shutdown_schedules

  daily_recurrence_time = each.value.daily_recurrence_time
  location              = each.value.location
  timezone              = each.value.timezone
  virtual_machine_id    = each.value.virtual_machine_id
  enabled               = each.value.enabled
  tags                  = each.value.tags

  notification_settings {
    email           = each.value.notification_settings.email
    enabled         = each.value.notification_settings.enabled
    time_in_minutes = each.value.notification_settings.time_in_minutes
    webhook_url     = each.value.notification_settings.webhook_url
  }
}

