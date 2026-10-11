variable "postgres_roles_lookup" {
  description = <<EOT
Map of postgres_roles_lookup, attributes below
Required:
    - parent
Optional:
    - page_size
    - provider_config
EOT

  type = map(object({
    parent    = string
    page_size = optional(number)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

