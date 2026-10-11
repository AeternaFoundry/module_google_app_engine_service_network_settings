output "app_engine_service_network_settings_id" {
  description = "Map of id values across all app_engine_service_network_settings, keyed the same as var.app_engine_service_network_settings except keys with no id are omitted"
  value       = { for k, v in google_app_engine_service_network_settings.app_engine_service_network_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_engine_service_network_settings_network_settings" {
  description = "Map of network_settings values across all app_engine_service_network_settings, keyed the same as var.app_engine_service_network_settings except keys with no network_settings are omitted"
  value       = { for k, v in google_app_engine_service_network_settings.app_engine_service_network_settings : k => one(v.network_settings) if v.network_settings != null && length(v.network_settings) > 0 }
}
output "app_engine_service_network_settings_project" {
  description = "Map of project values across all app_engine_service_network_settings, keyed the same as var.app_engine_service_network_settings except keys with no project are omitted"
  value       = { for k, v in google_app_engine_service_network_settings.app_engine_service_network_settings : k => v.project if v.project != null && length(v.project) > 0 }
}
output "app_engine_service_network_settings_service" {
  description = "Map of service values across all app_engine_service_network_settings, keyed the same as var.app_engine_service_network_settings except keys with no service are omitted"
  value       = { for k, v in google_app_engine_service_network_settings.app_engine_service_network_settings : k => v.service if v.service != null && length(v.service) > 0 }
}

