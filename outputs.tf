# --- azurerm_cdn_frontdoor_profile ---
output "cdn_frontdoor_profiles_id" {
  description = "Map of id values across all cdn_frontdoor_profiles, keyed the same as var.cdn_frontdoor_profiles"
  value       = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles_id
}

output "cdn_frontdoor_profiles_identity" {
  description = "Map of identity values across all cdn_frontdoor_profiles, keyed the same as var.cdn_frontdoor_profiles"
  value       = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles_identity
}

output "cdn_frontdoor_profiles_log_scrubbing_rule" {
  description = "Map of log_scrubbing_rule values across all cdn_frontdoor_profiles, keyed the same as var.cdn_frontdoor_profiles"
  value       = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles_log_scrubbing_rule
}

output "cdn_frontdoor_profiles_name" {
  description = "Map of name values across all cdn_frontdoor_profiles, keyed the same as var.cdn_frontdoor_profiles"
  value       = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles_name
}

output "cdn_frontdoor_profiles_resource_group_name" {
  description = "Map of resource_group_name values across all cdn_frontdoor_profiles, keyed the same as var.cdn_frontdoor_profiles"
  value       = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles_resource_group_name
}

output "cdn_frontdoor_profiles_resource_guid" {
  description = "Map of resource_guid values across all cdn_frontdoor_profiles, keyed the same as var.cdn_frontdoor_profiles"
  value       = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles_resource_guid
}

output "cdn_frontdoor_profiles_response_timeout_seconds" {
  description = "Map of response_timeout_seconds values across all cdn_frontdoor_profiles, keyed the same as var.cdn_frontdoor_profiles"
  value       = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles_response_timeout_seconds
}

output "cdn_frontdoor_profiles_sku_name" {
  description = "Map of sku_name values across all cdn_frontdoor_profiles, keyed the same as var.cdn_frontdoor_profiles"
  value       = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles_sku_name
}

output "cdn_frontdoor_profiles_tags" {
  description = "Map of tags values across all cdn_frontdoor_profiles, keyed the same as var.cdn_frontdoor_profiles"
  value       = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles_tags
}

# --- azurerm_cdn_frontdoor_custom_domain ---
output "cdn_frontdoor_custom_domains_id" {
  description = "Map of id values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains_id
}

output "cdn_frontdoor_custom_domains_cdn_frontdoor_profile_id" {
  description = "Map of cdn_frontdoor_profile_id values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains_cdn_frontdoor_profile_id
}

output "cdn_frontdoor_custom_domains_dns_zone_id" {
  description = "Map of dns_zone_id values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains_dns_zone_id
}

output "cdn_frontdoor_custom_domains_expiration_date" {
  description = "Map of expiration_date values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains_expiration_date
}

output "cdn_frontdoor_custom_domains_host_name" {
  description = "Map of host_name values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains_host_name
}

output "cdn_frontdoor_custom_domains_name" {
  description = "Map of name values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains_name
}

output "cdn_frontdoor_custom_domains_tls" {
  description = "Map of tls values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains_tls
}

output "cdn_frontdoor_custom_domains_validation_token" {
  description = "Map of validation_token values across all cdn_frontdoor_custom_domains, keyed the same as var.cdn_frontdoor_custom_domains"
  value       = module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains_validation_token
}

# --- azurerm_cdn_frontdoor_endpoint ---
output "cdn_frontdoor_endpoints_id" {
  description = "Map of id values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = module.cdn_frontdoor_endpoints.cdn_frontdoor_endpoints_id
}

output "cdn_frontdoor_endpoints_cdn_frontdoor_profile_id" {
  description = "Map of cdn_frontdoor_profile_id values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = module.cdn_frontdoor_endpoints.cdn_frontdoor_endpoints_cdn_frontdoor_profile_id
}

output "cdn_frontdoor_endpoints_enabled" {
  description = "Map of enabled values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = module.cdn_frontdoor_endpoints.cdn_frontdoor_endpoints_enabled
}

output "cdn_frontdoor_endpoints_host_name" {
  description = "Map of host_name values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = module.cdn_frontdoor_endpoints.cdn_frontdoor_endpoints_host_name
}

output "cdn_frontdoor_endpoints_name" {
  description = "Map of name values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = module.cdn_frontdoor_endpoints.cdn_frontdoor_endpoints_name
}

output "cdn_frontdoor_endpoints_tags" {
  description = "Map of tags values across all cdn_frontdoor_endpoints, keyed the same as var.cdn_frontdoor_endpoints"
  value       = module.cdn_frontdoor_endpoints.cdn_frontdoor_endpoints_tags
}

# --- azurerm_cdn_frontdoor_origin_group ---
output "cdn_frontdoor_origin_groups_id" {
  description = "Map of id values across all cdn_frontdoor_origin_groups, keyed the same as var.cdn_frontdoor_origin_groups"
  value       = module.cdn_frontdoor_origin_groups.cdn_frontdoor_origin_groups_id
}

output "cdn_frontdoor_origin_groups_cdn_frontdoor_profile_id" {
  description = "Map of cdn_frontdoor_profile_id values across all cdn_frontdoor_origin_groups, keyed the same as var.cdn_frontdoor_origin_groups"
  value       = module.cdn_frontdoor_origin_groups.cdn_frontdoor_origin_groups_cdn_frontdoor_profile_id
}

output "cdn_frontdoor_origin_groups_health_probe" {
  description = "Map of health_probe values across all cdn_frontdoor_origin_groups, keyed the same as var.cdn_frontdoor_origin_groups"
  value       = module.cdn_frontdoor_origin_groups.cdn_frontdoor_origin_groups_health_probe
}

output "cdn_frontdoor_origin_groups_load_balancing" {
  description = "Map of load_balancing values across all cdn_frontdoor_origin_groups, keyed the same as var.cdn_frontdoor_origin_groups"
  value       = module.cdn_frontdoor_origin_groups.cdn_frontdoor_origin_groups_load_balancing
}

output "cdn_frontdoor_origin_groups_name" {
  description = "Map of name values across all cdn_frontdoor_origin_groups, keyed the same as var.cdn_frontdoor_origin_groups"
  value       = module.cdn_frontdoor_origin_groups.cdn_frontdoor_origin_groups_name
}

output "cdn_frontdoor_origin_groups_restore_traffic_time_to_healed_or_new_endpoint_in_minutes" {
  description = "Map of restore_traffic_time_to_healed_or_new_endpoint_in_minutes values across all cdn_frontdoor_origin_groups, keyed the same as var.cdn_frontdoor_origin_groups"
  value       = module.cdn_frontdoor_origin_groups.cdn_frontdoor_origin_groups_restore_traffic_time_to_healed_or_new_endpoint_in_minutes
}

output "cdn_frontdoor_origin_groups_session_affinity_enabled" {
  description = "Map of session_affinity_enabled values across all cdn_frontdoor_origin_groups, keyed the same as var.cdn_frontdoor_origin_groups"
  value       = module.cdn_frontdoor_origin_groups.cdn_frontdoor_origin_groups_session_affinity_enabled
}

# --- azurerm_cdn_frontdoor_rule_set ---
output "cdn_frontdoor_rule_sets_id" {
  description = "Map of id values across all cdn_frontdoor_rule_sets, keyed the same as var.cdn_frontdoor_rule_sets"
  value       = module.cdn_frontdoor_rule_sets.cdn_frontdoor_rule_sets_id
}

output "cdn_frontdoor_rule_sets_cdn_frontdoor_profile_id" {
  description = "Map of cdn_frontdoor_profile_id values across all cdn_frontdoor_rule_sets, keyed the same as var.cdn_frontdoor_rule_sets"
  value       = module.cdn_frontdoor_rule_sets.cdn_frontdoor_rule_sets_cdn_frontdoor_profile_id
}

output "cdn_frontdoor_rule_sets_name" {
  description = "Map of name values across all cdn_frontdoor_rule_sets, keyed the same as var.cdn_frontdoor_rule_sets"
  value       = module.cdn_frontdoor_rule_sets.cdn_frontdoor_rule_sets_name
}

# --- azurerm_cdn_frontdoor_secret ---
output "cdn_frontdoor_secrets_id" {
  description = "Map of id values across all cdn_frontdoor_secrets, keyed the same as var.cdn_frontdoor_secrets"
  value       = module.cdn_frontdoor_secrets.cdn_frontdoor_secrets_id
}

output "cdn_frontdoor_secrets_cdn_frontdoor_profile_id" {
  description = "Map of cdn_frontdoor_profile_id values across all cdn_frontdoor_secrets, keyed the same as var.cdn_frontdoor_secrets"
  value       = module.cdn_frontdoor_secrets.cdn_frontdoor_secrets_cdn_frontdoor_profile_id
}

output "cdn_frontdoor_secrets_cdn_frontdoor_profile_name" {
  description = "Map of cdn_frontdoor_profile_name values across all cdn_frontdoor_secrets, keyed the same as var.cdn_frontdoor_secrets"
  value       = module.cdn_frontdoor_secrets.cdn_frontdoor_secrets_cdn_frontdoor_profile_name
}

output "cdn_frontdoor_secrets_name" {
  description = "Map of name values across all cdn_frontdoor_secrets, keyed the same as var.cdn_frontdoor_secrets"
  value       = module.cdn_frontdoor_secrets.cdn_frontdoor_secrets_name
}

output "cdn_frontdoor_secrets_secret" {
  description = "Map of secret values across all cdn_frontdoor_secrets, keyed the same as var.cdn_frontdoor_secrets"
  value       = module.cdn_frontdoor_secrets.cdn_frontdoor_secrets_secret
}

# --- azurerm_cdn_frontdoor_security_policy ---
output "cdn_frontdoor_security_policies_id" {
  description = "Map of id values across all cdn_frontdoor_security_policies, keyed the same as var.cdn_frontdoor_security_policies"
  value       = module.cdn_frontdoor_security_policies.cdn_frontdoor_security_policies_id
}

output "cdn_frontdoor_security_policies_cdn_frontdoor_profile_id" {
  description = "Map of cdn_frontdoor_profile_id values across all cdn_frontdoor_security_policies, keyed the same as var.cdn_frontdoor_security_policies"
  value       = module.cdn_frontdoor_security_policies.cdn_frontdoor_security_policies_cdn_frontdoor_profile_id
}

output "cdn_frontdoor_security_policies_name" {
  description = "Map of name values across all cdn_frontdoor_security_policies, keyed the same as var.cdn_frontdoor_security_policies"
  value       = module.cdn_frontdoor_security_policies.cdn_frontdoor_security_policies_name
}

output "cdn_frontdoor_security_policies_security_policies" {
  description = "Map of security_policies values across all cdn_frontdoor_security_policies, keyed the same as var.cdn_frontdoor_security_policies"
  value       = module.cdn_frontdoor_security_policies.cdn_frontdoor_security_policies_security_policies
}

# --- azurerm_cdn_frontdoor_custom_domain_association ---
output "cdn_frontdoor_custom_domain_associations_id" {
  description = "Map of id values across all cdn_frontdoor_custom_domain_associations, keyed the same as var.cdn_frontdoor_custom_domain_associations"
  value       = module.cdn_frontdoor_custom_domain_associations.cdn_frontdoor_custom_domain_associations_id
}

output "cdn_frontdoor_custom_domain_associations_cdn_frontdoor_custom_domain_id" {
  description = "Map of cdn_frontdoor_custom_domain_id values across all cdn_frontdoor_custom_domain_associations, keyed the same as var.cdn_frontdoor_custom_domain_associations"
  value       = module.cdn_frontdoor_custom_domain_associations.cdn_frontdoor_custom_domain_associations_cdn_frontdoor_custom_domain_id
}

output "cdn_frontdoor_custom_domain_associations_cdn_frontdoor_route_ids" {
  description = "Map of cdn_frontdoor_route_ids values across all cdn_frontdoor_custom_domain_associations, keyed the same as var.cdn_frontdoor_custom_domain_associations"
  value       = module.cdn_frontdoor_custom_domain_associations.cdn_frontdoor_custom_domain_associations_cdn_frontdoor_route_ids
}

# --- azurerm_cdn_frontdoor_origin ---
output "cdn_frontdoor_origins_id" {
  description = "Map of id values across all cdn_frontdoor_origins, keyed the same as var.cdn_frontdoor_origins"
  value       = module.cdn_frontdoor_origins.cdn_frontdoor_origins_id
}

output "cdn_frontdoor_origins_cdn_frontdoor_origin_group_id" {
  description = "Map of cdn_frontdoor_origin_group_id values across all cdn_frontdoor_origins, keyed the same as var.cdn_frontdoor_origins"
  value       = module.cdn_frontdoor_origins.cdn_frontdoor_origins_cdn_frontdoor_origin_group_id
}

output "cdn_frontdoor_origins_certificate_name_check_enabled" {
  description = "Map of certificate_name_check_enabled values across all cdn_frontdoor_origins, keyed the same as var.cdn_frontdoor_origins"
  value       = module.cdn_frontdoor_origins.cdn_frontdoor_origins_certificate_name_check_enabled
}

output "cdn_frontdoor_origins_enabled" {
  description = "Map of enabled values across all cdn_frontdoor_origins, keyed the same as var.cdn_frontdoor_origins"
  value       = module.cdn_frontdoor_origins.cdn_frontdoor_origins_enabled
}

output "cdn_frontdoor_origins_host_name" {
  description = "Map of host_name values across all cdn_frontdoor_origins, keyed the same as var.cdn_frontdoor_origins"
  value       = module.cdn_frontdoor_origins.cdn_frontdoor_origins_host_name
}

output "cdn_frontdoor_origins_http_port" {
  description = "Map of http_port values across all cdn_frontdoor_origins, keyed the same as var.cdn_frontdoor_origins"
  value       = module.cdn_frontdoor_origins.cdn_frontdoor_origins_http_port
}

output "cdn_frontdoor_origins_https_port" {
  description = "Map of https_port values across all cdn_frontdoor_origins, keyed the same as var.cdn_frontdoor_origins"
  value       = module.cdn_frontdoor_origins.cdn_frontdoor_origins_https_port
}

output "cdn_frontdoor_origins_name" {
  description = "Map of name values across all cdn_frontdoor_origins, keyed the same as var.cdn_frontdoor_origins"
  value       = module.cdn_frontdoor_origins.cdn_frontdoor_origins_name
}

output "cdn_frontdoor_origins_origin_host_header" {
  description = "Map of origin_host_header values across all cdn_frontdoor_origins, keyed the same as var.cdn_frontdoor_origins"
  value       = module.cdn_frontdoor_origins.cdn_frontdoor_origins_origin_host_header
}

output "cdn_frontdoor_origins_priority" {
  description = "Map of priority values across all cdn_frontdoor_origins, keyed the same as var.cdn_frontdoor_origins"
  value       = module.cdn_frontdoor_origins.cdn_frontdoor_origins_priority
}

output "cdn_frontdoor_origins_private_link" {
  description = "Map of private_link values across all cdn_frontdoor_origins, keyed the same as var.cdn_frontdoor_origins"
  value       = module.cdn_frontdoor_origins.cdn_frontdoor_origins_private_link
}

output "cdn_frontdoor_origins_weight" {
  description = "Map of weight values across all cdn_frontdoor_origins, keyed the same as var.cdn_frontdoor_origins"
  value       = module.cdn_frontdoor_origins.cdn_frontdoor_origins_weight
}

# --- azurerm_cdn_frontdoor_route ---
output "cdn_frontdoor_routes_id" {
  description = "Map of id values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = module.cdn_frontdoor_routes.cdn_frontdoor_routes_id
}

output "cdn_frontdoor_routes_cache" {
  description = "Map of cache values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = module.cdn_frontdoor_routes.cdn_frontdoor_routes_cache
}

output "cdn_frontdoor_routes_cdn_frontdoor_custom_domain_ids" {
  description = "Map of cdn_frontdoor_custom_domain_ids values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = module.cdn_frontdoor_routes.cdn_frontdoor_routes_cdn_frontdoor_custom_domain_ids
}

output "cdn_frontdoor_routes_cdn_frontdoor_endpoint_id" {
  description = "Map of cdn_frontdoor_endpoint_id values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = module.cdn_frontdoor_routes.cdn_frontdoor_routes_cdn_frontdoor_endpoint_id
}

output "cdn_frontdoor_routes_cdn_frontdoor_origin_group_id" {
  description = "Map of cdn_frontdoor_origin_group_id values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = module.cdn_frontdoor_routes.cdn_frontdoor_routes_cdn_frontdoor_origin_group_id
}

output "cdn_frontdoor_routes_cdn_frontdoor_origin_ids" {
  description = "Map of cdn_frontdoor_origin_ids values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = module.cdn_frontdoor_routes.cdn_frontdoor_routes_cdn_frontdoor_origin_ids
}

output "cdn_frontdoor_routes_cdn_frontdoor_origin_path" {
  description = "Map of cdn_frontdoor_origin_path values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = module.cdn_frontdoor_routes.cdn_frontdoor_routes_cdn_frontdoor_origin_path
}

output "cdn_frontdoor_routes_cdn_frontdoor_rule_set_ids" {
  description = "Map of cdn_frontdoor_rule_set_ids values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = module.cdn_frontdoor_routes.cdn_frontdoor_routes_cdn_frontdoor_rule_set_ids
}

output "cdn_frontdoor_routes_enabled" {
  description = "Map of enabled values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = module.cdn_frontdoor_routes.cdn_frontdoor_routes_enabled
}

output "cdn_frontdoor_routes_forwarding_protocol" {
  description = "Map of forwarding_protocol values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = module.cdn_frontdoor_routes.cdn_frontdoor_routes_forwarding_protocol
}

output "cdn_frontdoor_routes_https_redirect_enabled" {
  description = "Map of https_redirect_enabled values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = module.cdn_frontdoor_routes.cdn_frontdoor_routes_https_redirect_enabled
}

output "cdn_frontdoor_routes_link_to_default_domain" {
  description = "Map of link_to_default_domain values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = module.cdn_frontdoor_routes.cdn_frontdoor_routes_link_to_default_domain
}

output "cdn_frontdoor_routes_name" {
  description = "Map of name values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = module.cdn_frontdoor_routes.cdn_frontdoor_routes_name
}

output "cdn_frontdoor_routes_patterns_to_match" {
  description = "Map of patterns_to_match values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = module.cdn_frontdoor_routes.cdn_frontdoor_routes_patterns_to_match
}

output "cdn_frontdoor_routes_supported_protocols" {
  description = "Map of supported_protocols values across all cdn_frontdoor_routes, keyed the same as var.cdn_frontdoor_routes"
  value       = module.cdn_frontdoor_routes.cdn_frontdoor_routes_supported_protocols
}

# --- azurerm_cdn_frontdoor_rule ---
output "cdn_frontdoor_rules_id" {
  description = "Map of id values across all cdn_frontdoor_rules, keyed the same as var.cdn_frontdoor_rules"
  value       = module.cdn_frontdoor_rules.cdn_frontdoor_rules_id
}

output "cdn_frontdoor_rules_actions" {
  description = "Map of actions values across all cdn_frontdoor_rules, keyed the same as var.cdn_frontdoor_rules"
  value       = module.cdn_frontdoor_rules.cdn_frontdoor_rules_actions
}

output "cdn_frontdoor_rules_behavior_on_match" {
  description = "Map of behavior_on_match values across all cdn_frontdoor_rules, keyed the same as var.cdn_frontdoor_rules"
  value       = module.cdn_frontdoor_rules.cdn_frontdoor_rules_behavior_on_match
}

output "cdn_frontdoor_rules_cdn_frontdoor_rule_set_id" {
  description = "Map of cdn_frontdoor_rule_set_id values across all cdn_frontdoor_rules, keyed the same as var.cdn_frontdoor_rules"
  value       = module.cdn_frontdoor_rules.cdn_frontdoor_rules_cdn_frontdoor_rule_set_id
}

output "cdn_frontdoor_rules_cdn_frontdoor_rule_set_name" {
  description = "Map of cdn_frontdoor_rule_set_name values across all cdn_frontdoor_rules, keyed the same as var.cdn_frontdoor_rules"
  value       = module.cdn_frontdoor_rules.cdn_frontdoor_rules_cdn_frontdoor_rule_set_name
}

output "cdn_frontdoor_rules_conditions" {
  description = "Map of conditions values across all cdn_frontdoor_rules, keyed the same as var.cdn_frontdoor_rules"
  value       = module.cdn_frontdoor_rules.cdn_frontdoor_rules_conditions
}

output "cdn_frontdoor_rules_name" {
  description = "Map of name values across all cdn_frontdoor_rules, keyed the same as var.cdn_frontdoor_rules"
  value       = module.cdn_frontdoor_rules.cdn_frontdoor_rules_name
}

output "cdn_frontdoor_rules_order" {
  description = "Map of order values across all cdn_frontdoor_rules, keyed the same as var.cdn_frontdoor_rules"
  value       = module.cdn_frontdoor_rules.cdn_frontdoor_rules_order
}


