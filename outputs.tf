output "dev_test_global_vm_shutdown_schedules_id" {
  description = "Map of id values across all dev_test_global_vm_shutdown_schedules, keyed the same as var.dev_test_global_vm_shutdown_schedules"
  value       = { for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : k => v.id }
}
output "dev_test_global_vm_shutdown_schedules_daily_recurrence_time" {
  description = "Map of daily_recurrence_time values across all dev_test_global_vm_shutdown_schedules, keyed the same as var.dev_test_global_vm_shutdown_schedules"
  value       = { for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : k => v.daily_recurrence_time }
}
output "dev_test_global_vm_shutdown_schedules_enabled" {
  description = "Map of enabled values across all dev_test_global_vm_shutdown_schedules, keyed the same as var.dev_test_global_vm_shutdown_schedules"
  value       = { for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : k => v.enabled }
}
output "dev_test_global_vm_shutdown_schedules_location" {
  description = "Map of location values across all dev_test_global_vm_shutdown_schedules, keyed the same as var.dev_test_global_vm_shutdown_schedules"
  value       = { for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : k => v.location }
}
output "dev_test_global_vm_shutdown_schedules_notification_settings" {
  description = "Map of notification_settings values across all dev_test_global_vm_shutdown_schedules, keyed the same as var.dev_test_global_vm_shutdown_schedules"
  value       = { for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : k => v.notification_settings }
}
output "dev_test_global_vm_shutdown_schedules_tags" {
  description = "Map of tags values across all dev_test_global_vm_shutdown_schedules, keyed the same as var.dev_test_global_vm_shutdown_schedules"
  value       = { for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : k => v.tags }
}
output "dev_test_global_vm_shutdown_schedules_timezone" {
  description = "Map of timezone values across all dev_test_global_vm_shutdown_schedules, keyed the same as var.dev_test_global_vm_shutdown_schedules"
  value       = { for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : k => v.timezone }
}
output "dev_test_global_vm_shutdown_schedules_virtual_machine_id" {
  description = "Map of virtual_machine_id values across all dev_test_global_vm_shutdown_schedules, keyed the same as var.dev_test_global_vm_shutdown_schedules"
  value       = { for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : k => v.virtual_machine_id }
}

