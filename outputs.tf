output "postgres_roles_lookup_page_size" {
  description = "Map of page_size values across all postgres_roles_lookup, keyed the same as var.postgres_roles_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_postgres_roles.postgres_roles_lookup : k => v.page_size if v.page_size != null }
}
output "postgres_roles_lookup_parent" {
  description = "Map of parent values across all postgres_roles_lookup, keyed the same as var.postgres_roles_lookup except keys with no parent are omitted"
  value       = { for k, v in data.databricks_postgres_roles.postgres_roles_lookup : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "postgres_roles_lookup_provider_config" {
  description = "Map of provider_config values across all postgres_roles_lookup, keyed the same as var.postgres_roles_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_postgres_roles.postgres_roles_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "postgres_roles_lookup_roles" {
  description = "Map of roles values across all postgres_roles_lookup, keyed the same as var.postgres_roles_lookup except keys with no roles are omitted"
  value       = { for k, v in data.databricks_postgres_roles.postgres_roles_lookup : k => v.roles if v.roles != null && length(v.roles) > 0 }
}

