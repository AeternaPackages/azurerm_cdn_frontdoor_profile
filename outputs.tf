# --- azurerm_cdn_frontdoor_profile ---
output "cdn_frontdoor_profiles" {
  description = "All cdn_frontdoor_profile resources"
  value       = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles
}
output "cdn_frontdoor_profiles_identity" {
  description = "List of identity values across all cdn_frontdoor_profiles"
  value       = [for k, v in module.cdn_frontdoor_profiles.cdn_frontdoor_profiles : v.identity]
}
output "cdn_frontdoor_profiles_log_scrubbing_rule" {
  description = "List of log_scrubbing_rule values across all cdn_frontdoor_profiles"
  value       = [for k, v in module.cdn_frontdoor_profiles.cdn_frontdoor_profiles : v.log_scrubbing_rule]
}
output "cdn_frontdoor_profiles_name" {
  description = "List of name values across all cdn_frontdoor_profiles"
  value       = [for k, v in module.cdn_frontdoor_profiles.cdn_frontdoor_profiles : v.name]
}
output "cdn_frontdoor_profiles_resource_group_name" {
  description = "List of resource_group_name values across all cdn_frontdoor_profiles"
  value       = [for k, v in module.cdn_frontdoor_profiles.cdn_frontdoor_profiles : v.resource_group_name]
}
output "cdn_frontdoor_profiles_resource_guid" {
  description = "List of resource_guid values across all cdn_frontdoor_profiles"
  value       = [for k, v in module.cdn_frontdoor_profiles.cdn_frontdoor_profiles : v.resource_guid]
}
output "cdn_frontdoor_profiles_response_timeout_seconds" {
  description = "List of response_timeout_seconds values across all cdn_frontdoor_profiles"
  value       = [for k, v in module.cdn_frontdoor_profiles.cdn_frontdoor_profiles : v.response_timeout_seconds]
}
output "cdn_frontdoor_profiles_sku_name" {
  description = "List of sku_name values across all cdn_frontdoor_profiles"
  value       = [for k, v in module.cdn_frontdoor_profiles.cdn_frontdoor_profiles : v.sku_name]
}
output "cdn_frontdoor_profiles_tags" {
  description = "List of tags values across all cdn_frontdoor_profiles"
  value       = [for k, v in module.cdn_frontdoor_profiles.cdn_frontdoor_profiles : v.tags]
}


# --- azurerm_cdn_frontdoor_custom_domain ---
output "cdn_frontdoor_custom_domains" {
  description = "All cdn_frontdoor_custom_domain resources"
  value       = module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains
}
output "cdn_frontdoor_custom_domains_cdn_frontdoor_profile_id" {
  description = "List of cdn_frontdoor_profile_id values across all cdn_frontdoor_custom_domains"
  value       = [for k, v in module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains : v.cdn_frontdoor_profile_id]
}
output "cdn_frontdoor_custom_domains_dns_zone_id" {
  description = "List of dns_zone_id values across all cdn_frontdoor_custom_domains"
  value       = [for k, v in module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains : v.dns_zone_id]
}
output "cdn_frontdoor_custom_domains_expiration_date" {
  description = "List of expiration_date values across all cdn_frontdoor_custom_domains"
  value       = [for k, v in module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains : v.expiration_date]
}
output "cdn_frontdoor_custom_domains_host_name" {
  description = "List of host_name values across all cdn_frontdoor_custom_domains"
  value       = [for k, v in module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains : v.host_name]
}
output "cdn_frontdoor_custom_domains_name" {
  description = "List of name values across all cdn_frontdoor_custom_domains"
  value       = [for k, v in module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains : v.name]
}
output "cdn_frontdoor_custom_domains_tls" {
  description = "List of tls values across all cdn_frontdoor_custom_domains"
  value       = [for k, v in module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains : v.tls]
}
output "cdn_frontdoor_custom_domains_validation_token" {
  description = "List of validation_token values across all cdn_frontdoor_custom_domains"
  value       = [for k, v in module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains : v.validation_token]
}


# --- azurerm_cdn_frontdoor_endpoint ---
output "cdn_frontdoor_endpoints" {
  description = "All cdn_frontdoor_endpoint resources"
  value       = module.cdn_frontdoor_endpoints.cdn_frontdoor_endpoints
}
output "cdn_frontdoor_endpoints_cdn_frontdoor_profile_id" {
  description = "List of cdn_frontdoor_profile_id values across all cdn_frontdoor_endpoints"
  value       = [for k, v in module.cdn_frontdoor_endpoints.cdn_frontdoor_endpoints : v.cdn_frontdoor_profile_id]
}
output "cdn_frontdoor_endpoints_enabled" {
  description = "List of enabled values across all cdn_frontdoor_endpoints"
  value       = [for k, v in module.cdn_frontdoor_endpoints.cdn_frontdoor_endpoints : v.enabled]
}
output "cdn_frontdoor_endpoints_host_name" {
  description = "List of host_name values across all cdn_frontdoor_endpoints"
  value       = [for k, v in module.cdn_frontdoor_endpoints.cdn_frontdoor_endpoints : v.host_name]
}
output "cdn_frontdoor_endpoints_name" {
  description = "List of name values across all cdn_frontdoor_endpoints"
  value       = [for k, v in module.cdn_frontdoor_endpoints.cdn_frontdoor_endpoints : v.name]
}
output "cdn_frontdoor_endpoints_tags" {
  description = "List of tags values across all cdn_frontdoor_endpoints"
  value       = [for k, v in module.cdn_frontdoor_endpoints.cdn_frontdoor_endpoints : v.tags]
}


# --- azurerm_cdn_frontdoor_origin_group ---
output "cdn_frontdoor_origin_groups" {
  description = "All cdn_frontdoor_origin_group resources"
  value       = module.cdn_frontdoor_origin_groups.cdn_frontdoor_origin_groups
}
output "cdn_frontdoor_origin_groups_cdn_frontdoor_profile_id" {
  description = "List of cdn_frontdoor_profile_id values across all cdn_frontdoor_origin_groups"
  value       = [for k, v in module.cdn_frontdoor_origin_groups.cdn_frontdoor_origin_groups : v.cdn_frontdoor_profile_id]
}
output "cdn_frontdoor_origin_groups_health_probe" {
  description = "List of health_probe values across all cdn_frontdoor_origin_groups"
  value       = [for k, v in module.cdn_frontdoor_origin_groups.cdn_frontdoor_origin_groups : v.health_probe]
}
output "cdn_frontdoor_origin_groups_load_balancing" {
  description = "List of load_balancing values across all cdn_frontdoor_origin_groups"
  value       = [for k, v in module.cdn_frontdoor_origin_groups.cdn_frontdoor_origin_groups : v.load_balancing]
}
output "cdn_frontdoor_origin_groups_name" {
  description = "List of name values across all cdn_frontdoor_origin_groups"
  value       = [for k, v in module.cdn_frontdoor_origin_groups.cdn_frontdoor_origin_groups : v.name]
}
output "cdn_frontdoor_origin_groups_restore_traffic_time_to_healed_or_new_endpoint_in_minutes" {
  description = "List of restore_traffic_time_to_healed_or_new_endpoint_in_minutes values across all cdn_frontdoor_origin_groups"
  value       = [for k, v in module.cdn_frontdoor_origin_groups.cdn_frontdoor_origin_groups : v.restore_traffic_time_to_healed_or_new_endpoint_in_minutes]
}
output "cdn_frontdoor_origin_groups_session_affinity_enabled" {
  description = "List of session_affinity_enabled values across all cdn_frontdoor_origin_groups"
  value       = [for k, v in module.cdn_frontdoor_origin_groups.cdn_frontdoor_origin_groups : v.session_affinity_enabled]
}


# --- azurerm_cdn_frontdoor_rule_set ---
output "cdn_frontdoor_rule_sets" {
  description = "All cdn_frontdoor_rule_set resources"
  value       = module.cdn_frontdoor_rule_sets.cdn_frontdoor_rule_sets
}
output "cdn_frontdoor_rule_sets_cdn_frontdoor_profile_id" {
  description = "List of cdn_frontdoor_profile_id values across all cdn_frontdoor_rule_sets"
  value       = [for k, v in module.cdn_frontdoor_rule_sets.cdn_frontdoor_rule_sets : v.cdn_frontdoor_profile_id]
}
output "cdn_frontdoor_rule_sets_name" {
  description = "List of name values across all cdn_frontdoor_rule_sets"
  value       = [for k, v in module.cdn_frontdoor_rule_sets.cdn_frontdoor_rule_sets : v.name]
}


# --- azurerm_cdn_frontdoor_secret ---
output "cdn_frontdoor_secrets" {
  description = "All cdn_frontdoor_secret resources"
  value       = module.cdn_frontdoor_secrets.cdn_frontdoor_secrets
}
output "cdn_frontdoor_secrets_cdn_frontdoor_profile_id" {
  description = "List of cdn_frontdoor_profile_id values across all cdn_frontdoor_secrets"
  value       = [for k, v in module.cdn_frontdoor_secrets.cdn_frontdoor_secrets : v.cdn_frontdoor_profile_id]
}
output "cdn_frontdoor_secrets_cdn_frontdoor_profile_name" {
  description = "List of cdn_frontdoor_profile_name values across all cdn_frontdoor_secrets"
  value       = [for k, v in module.cdn_frontdoor_secrets.cdn_frontdoor_secrets : v.cdn_frontdoor_profile_name]
}
output "cdn_frontdoor_secrets_name" {
  description = "List of name values across all cdn_frontdoor_secrets"
  value       = [for k, v in module.cdn_frontdoor_secrets.cdn_frontdoor_secrets : v.name]
}
output "cdn_frontdoor_secrets_secret" {
  description = "List of secret values across all cdn_frontdoor_secrets"
  value       = [for k, v in module.cdn_frontdoor_secrets.cdn_frontdoor_secrets : v.secret]
}


# --- azurerm_cdn_frontdoor_security_policy ---
output "cdn_frontdoor_security_policies" {
  description = "All cdn_frontdoor_security_policy resources"
  value       = module.cdn_frontdoor_security_policies.cdn_frontdoor_security_policies
}
output "cdn_frontdoor_security_policies_cdn_frontdoor_profile_id" {
  description = "List of cdn_frontdoor_profile_id values across all cdn_frontdoor_security_policies"
  value       = [for k, v in module.cdn_frontdoor_security_policies.cdn_frontdoor_security_policies : v.cdn_frontdoor_profile_id]
}
output "cdn_frontdoor_security_policies_name" {
  description = "List of name values across all cdn_frontdoor_security_policies"
  value       = [for k, v in module.cdn_frontdoor_security_policies.cdn_frontdoor_security_policies : v.name]
}
output "cdn_frontdoor_security_policies_security_policies" {
  description = "List of security_policies values across all cdn_frontdoor_security_policies"
  value       = [for k, v in module.cdn_frontdoor_security_policies.cdn_frontdoor_security_policies : v.security_policies]
}


# --- azurerm_cdn_frontdoor_custom_domain_association ---
output "cdn_frontdoor_custom_domain_associations" {
  description = "All cdn_frontdoor_custom_domain_association resources"
  value       = module.cdn_frontdoor_custom_domain_associations.cdn_frontdoor_custom_domain_associations
}
output "cdn_frontdoor_custom_domain_associations_cdn_frontdoor_custom_domain_id" {
  description = "List of cdn_frontdoor_custom_domain_id values across all cdn_frontdoor_custom_domain_associations"
  value       = [for k, v in module.cdn_frontdoor_custom_domain_associations.cdn_frontdoor_custom_domain_associations : v.cdn_frontdoor_custom_domain_id]
}
output "cdn_frontdoor_custom_domain_associations_cdn_frontdoor_route_ids" {
  description = "List of cdn_frontdoor_route_ids values across all cdn_frontdoor_custom_domain_associations"
  value       = [for k, v in module.cdn_frontdoor_custom_domain_associations.cdn_frontdoor_custom_domain_associations : v.cdn_frontdoor_route_ids]
}


# --- azurerm_cdn_frontdoor_origin ---
output "cdn_frontdoor_origins" {
  description = "All cdn_frontdoor_origin resources"
  value       = module.cdn_frontdoor_origins.cdn_frontdoor_origins
}
output "cdn_frontdoor_origins_cdn_frontdoor_origin_group_id" {
  description = "List of cdn_frontdoor_origin_group_id values across all cdn_frontdoor_origins"
  value       = [for k, v in module.cdn_frontdoor_origins.cdn_frontdoor_origins : v.cdn_frontdoor_origin_group_id]
}
output "cdn_frontdoor_origins_certificate_name_check_enabled" {
  description = "List of certificate_name_check_enabled values across all cdn_frontdoor_origins"
  value       = [for k, v in module.cdn_frontdoor_origins.cdn_frontdoor_origins : v.certificate_name_check_enabled]
}
output "cdn_frontdoor_origins_enabled" {
  description = "List of enabled values across all cdn_frontdoor_origins"
  value       = [for k, v in module.cdn_frontdoor_origins.cdn_frontdoor_origins : v.enabled]
}
output "cdn_frontdoor_origins_host_name" {
  description = "List of host_name values across all cdn_frontdoor_origins"
  value       = [for k, v in module.cdn_frontdoor_origins.cdn_frontdoor_origins : v.host_name]
}
output "cdn_frontdoor_origins_http_port" {
  description = "List of http_port values across all cdn_frontdoor_origins"
  value       = [for k, v in module.cdn_frontdoor_origins.cdn_frontdoor_origins : v.http_port]
}
output "cdn_frontdoor_origins_https_port" {
  description = "List of https_port values across all cdn_frontdoor_origins"
  value       = [for k, v in module.cdn_frontdoor_origins.cdn_frontdoor_origins : v.https_port]
}
output "cdn_frontdoor_origins_name" {
  description = "List of name values across all cdn_frontdoor_origins"
  value       = [for k, v in module.cdn_frontdoor_origins.cdn_frontdoor_origins : v.name]
}
output "cdn_frontdoor_origins_origin_host_header" {
  description = "List of origin_host_header values across all cdn_frontdoor_origins"
  value       = [for k, v in module.cdn_frontdoor_origins.cdn_frontdoor_origins : v.origin_host_header]
}
output "cdn_frontdoor_origins_priority" {
  description = "List of priority values across all cdn_frontdoor_origins"
  value       = [for k, v in module.cdn_frontdoor_origins.cdn_frontdoor_origins : v.priority]
}
output "cdn_frontdoor_origins_private_link" {
  description = "List of private_link values across all cdn_frontdoor_origins"
  value       = [for k, v in module.cdn_frontdoor_origins.cdn_frontdoor_origins : v.private_link]
}
output "cdn_frontdoor_origins_weight" {
  description = "List of weight values across all cdn_frontdoor_origins"
  value       = [for k, v in module.cdn_frontdoor_origins.cdn_frontdoor_origins : v.weight]
}


# --- azurerm_cdn_frontdoor_route ---
output "cdn_frontdoor_routes" {
  description = "All cdn_frontdoor_route resources"
  value       = module.cdn_frontdoor_routes.cdn_frontdoor_routes
}
output "cdn_frontdoor_routes_cache" {
  description = "List of cache values across all cdn_frontdoor_routes"
  value       = [for k, v in module.cdn_frontdoor_routes.cdn_frontdoor_routes : v.cache]
}
output "cdn_frontdoor_routes_cdn_frontdoor_custom_domain_ids" {
  description = "List of cdn_frontdoor_custom_domain_ids values across all cdn_frontdoor_routes"
  value       = [for k, v in module.cdn_frontdoor_routes.cdn_frontdoor_routes : v.cdn_frontdoor_custom_domain_ids]
}
output "cdn_frontdoor_routes_cdn_frontdoor_endpoint_id" {
  description = "List of cdn_frontdoor_endpoint_id values across all cdn_frontdoor_routes"
  value       = [for k, v in module.cdn_frontdoor_routes.cdn_frontdoor_routes : v.cdn_frontdoor_endpoint_id]
}
output "cdn_frontdoor_routes_cdn_frontdoor_origin_group_id" {
  description = "List of cdn_frontdoor_origin_group_id values across all cdn_frontdoor_routes"
  value       = [for k, v in module.cdn_frontdoor_routes.cdn_frontdoor_routes : v.cdn_frontdoor_origin_group_id]
}
output "cdn_frontdoor_routes_cdn_frontdoor_origin_ids" {
  description = "List of cdn_frontdoor_origin_ids values across all cdn_frontdoor_routes"
  value       = [for k, v in module.cdn_frontdoor_routes.cdn_frontdoor_routes : v.cdn_frontdoor_origin_ids]
}
output "cdn_frontdoor_routes_cdn_frontdoor_origin_path" {
  description = "List of cdn_frontdoor_origin_path values across all cdn_frontdoor_routes"
  value       = [for k, v in module.cdn_frontdoor_routes.cdn_frontdoor_routes : v.cdn_frontdoor_origin_path]
}
output "cdn_frontdoor_routes_cdn_frontdoor_rule_set_ids" {
  description = "List of cdn_frontdoor_rule_set_ids values across all cdn_frontdoor_routes"
  value       = [for k, v in module.cdn_frontdoor_routes.cdn_frontdoor_routes : v.cdn_frontdoor_rule_set_ids]
}
output "cdn_frontdoor_routes_enabled" {
  description = "List of enabled values across all cdn_frontdoor_routes"
  value       = [for k, v in module.cdn_frontdoor_routes.cdn_frontdoor_routes : v.enabled]
}
output "cdn_frontdoor_routes_forwarding_protocol" {
  description = "List of forwarding_protocol values across all cdn_frontdoor_routes"
  value       = [for k, v in module.cdn_frontdoor_routes.cdn_frontdoor_routes : v.forwarding_protocol]
}
output "cdn_frontdoor_routes_https_redirect_enabled" {
  description = "List of https_redirect_enabled values across all cdn_frontdoor_routes"
  value       = [for k, v in module.cdn_frontdoor_routes.cdn_frontdoor_routes : v.https_redirect_enabled]
}
output "cdn_frontdoor_routes_link_to_default_domain" {
  description = "List of link_to_default_domain values across all cdn_frontdoor_routes"
  value       = [for k, v in module.cdn_frontdoor_routes.cdn_frontdoor_routes : v.link_to_default_domain]
}
output "cdn_frontdoor_routes_name" {
  description = "List of name values across all cdn_frontdoor_routes"
  value       = [for k, v in module.cdn_frontdoor_routes.cdn_frontdoor_routes : v.name]
}
output "cdn_frontdoor_routes_patterns_to_match" {
  description = "List of patterns_to_match values across all cdn_frontdoor_routes"
  value       = [for k, v in module.cdn_frontdoor_routes.cdn_frontdoor_routes : v.patterns_to_match]
}
output "cdn_frontdoor_routes_supported_protocols" {
  description = "List of supported_protocols values across all cdn_frontdoor_routes"
  value       = [for k, v in module.cdn_frontdoor_routes.cdn_frontdoor_routes : v.supported_protocols]
}


# --- azurerm_cdn_frontdoor_rule ---
output "cdn_frontdoor_rules" {
  description = "All cdn_frontdoor_rule resources"
  value       = module.cdn_frontdoor_rules.cdn_frontdoor_rules
}
output "cdn_frontdoor_rules_actions" {
  description = "List of actions values across all cdn_frontdoor_rules"
  value       = [for k, v in module.cdn_frontdoor_rules.cdn_frontdoor_rules : v.actions]
}
output "cdn_frontdoor_rules_behavior_on_match" {
  description = "List of behavior_on_match values across all cdn_frontdoor_rules"
  value       = [for k, v in module.cdn_frontdoor_rules.cdn_frontdoor_rules : v.behavior_on_match]
}
output "cdn_frontdoor_rules_cdn_frontdoor_rule_set_id" {
  description = "List of cdn_frontdoor_rule_set_id values across all cdn_frontdoor_rules"
  value       = [for k, v in module.cdn_frontdoor_rules.cdn_frontdoor_rules : v.cdn_frontdoor_rule_set_id]
}
output "cdn_frontdoor_rules_cdn_frontdoor_rule_set_name" {
  description = "List of cdn_frontdoor_rule_set_name values across all cdn_frontdoor_rules"
  value       = [for k, v in module.cdn_frontdoor_rules.cdn_frontdoor_rules : v.cdn_frontdoor_rule_set_name]
}
output "cdn_frontdoor_rules_conditions" {
  description = "List of conditions values across all cdn_frontdoor_rules"
  value       = [for k, v in module.cdn_frontdoor_rules.cdn_frontdoor_rules : v.conditions]
}
output "cdn_frontdoor_rules_name" {
  description = "List of name values across all cdn_frontdoor_rules"
  value       = [for k, v in module.cdn_frontdoor_rules.cdn_frontdoor_rules : v.name]
}
output "cdn_frontdoor_rules_order" {
  description = "List of order values across all cdn_frontdoor_rules"
  value       = [for k, v in module.cdn_frontdoor_rules.cdn_frontdoor_rules : v.order]
}



