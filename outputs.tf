output "dev_test_global_vm_shutdown_schedules_id" {
  description = "Map of id values across all dev_test_global_vm_shutdown_schedules, keyed the same as var.dev_test_global_vm_shutdown_schedules"
  value       = { for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dev_test_global_vm_shutdown_schedules_daily_recurrence_time" {
  description = "Map of daily_recurrence_time values across all dev_test_global_vm_shutdown_schedules, keyed the same as var.dev_test_global_vm_shutdown_schedules"
  value       = { for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : k => v.daily_recurrence_time if v.daily_recurrence_time != null && length(v.daily_recurrence_time) > 0 }
}
output "dev_test_global_vm_shutdown_schedules_enabled" {
  description = "Map of enabled values across all dev_test_global_vm_shutdown_schedules, keyed the same as var.dev_test_global_vm_shutdown_schedules"
  value       = { for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : k => v.enabled if v.enabled != null }
}
output "dev_test_global_vm_shutdown_schedules_location" {
  description = "Map of location values across all dev_test_global_vm_shutdown_schedules, keyed the same as var.dev_test_global_vm_shutdown_schedules"
  value       = { for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : k => v.location if v.location != null && length(v.location) > 0 }
}
output "dev_test_global_vm_shutdown_schedules_notification_settings" {
  description = "Map of notification_settings values across all dev_test_global_vm_shutdown_schedules, keyed the same as var.dev_test_global_vm_shutdown_schedules"
  value       = { for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : k => one(v.notification_settings) if v.notification_settings != null && length(v.notification_settings) > 0 }
}
output "dev_test_global_vm_shutdown_schedules_tags" {
  description = "Map of tags values across all dev_test_global_vm_shutdown_schedules, keyed the same as var.dev_test_global_vm_shutdown_schedules"
  value       = { for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "dev_test_global_vm_shutdown_schedules_timezone" {
  description = "Map of timezone values across all dev_test_global_vm_shutdown_schedules, keyed the same as var.dev_test_global_vm_shutdown_schedules"
  value       = { for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : k => v.timezone if v.timezone != null && length(v.timezone) > 0 }
}
output "dev_test_global_vm_shutdown_schedules_virtual_machine_id" {
  description = "Map of virtual_machine_id values across all dev_test_global_vm_shutdown_schedules, keyed the same as var.dev_test_global_vm_shutdown_schedules"
  value       = { for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : k => v.virtual_machine_id if v.virtual_machine_id != null && length(v.virtual_machine_id) > 0 }
}

