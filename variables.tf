variable "app_engine_service_network_settings" {
  description = <<EOT
Map of app_engine_service_network_settings, attributes below
Required:
    - service
    - network_settings (block):
        - ingress_traffic_allowed (optional)
Optional:
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    service = string
    project = optional(string)
    network_settings = object({
      ingress_traffic_allowed = optional(string)
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

