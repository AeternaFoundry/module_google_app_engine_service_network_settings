resource "google_app_engine_service_network_settings" "app_engine_service_network_settings" {
  for_each = var.app_engine_service_network_settings

  service = each.value.service
  project = each.value.project

  network_settings {
    ingress_traffic_allowed = each.value.network_settings.ingress_traffic_allowed
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

