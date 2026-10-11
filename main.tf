data "databricks_postgres_roles" "postgres_roles_lookup" {
  for_each = var.postgres_roles_lookup

  parent          = each.value.parent
  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

