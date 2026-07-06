output "dev_test_global_vm_shutdown_schedules" {
  description = "All dev_test_global_vm_shutdown_schedule resources"
  value       = azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules
}
output "dev_test_global_vm_shutdown_schedules_daily_recurrence_time" {
  description = "List of daily_recurrence_time values across all dev_test_global_vm_shutdown_schedules"
  value       = [for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : v.daily_recurrence_time]
}
output "dev_test_global_vm_shutdown_schedules_enabled" {
  description = "List of enabled values across all dev_test_global_vm_shutdown_schedules"
  value       = [for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : v.enabled]
}
output "dev_test_global_vm_shutdown_schedules_location" {
  description = "List of location values across all dev_test_global_vm_shutdown_schedules"
  value       = [for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : v.location]
}
output "dev_test_global_vm_shutdown_schedules_notification_settings" {
  description = "List of notification_settings values across all dev_test_global_vm_shutdown_schedules"
  value       = [for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : v.notification_settings]
}
output "dev_test_global_vm_shutdown_schedules_tags" {
  description = "List of tags values across all dev_test_global_vm_shutdown_schedules"
  value       = [for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : v.tags]
}
output "dev_test_global_vm_shutdown_schedules_timezone" {
  description = "List of timezone values across all dev_test_global_vm_shutdown_schedules"
  value       = [for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : v.timezone]
}
output "dev_test_global_vm_shutdown_schedules_virtual_machine_id" {
  description = "List of virtual_machine_id values across all dev_test_global_vm_shutdown_schedules"
  value       = [for k, v in azurerm_dev_test_global_vm_shutdown_schedule.dev_test_global_vm_shutdown_schedules : v.virtual_machine_id]
}

