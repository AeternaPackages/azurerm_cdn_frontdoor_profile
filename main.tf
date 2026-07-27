locals {
  cdn_frontdoor_profiles = { for k1, v1 in var.cdn_frontdoor_profiles : k1 => { identity = v1.identity, log_scrubbing_rule = v1.log_scrubbing_rule, name = v1.name, resource_group_name = v1.resource_group_name, response_timeout_seconds = v1.response_timeout_seconds, sku_name = v1.sku_name, tags = v1.tags } }

  cdn_frontdoor_batch_rule_sets = merge([
    for k1, v1 in var.cdn_frontdoor_profiles : {
      for k2, v2 in coalesce(v1.cdn_frontdoor_batch_rule_sets, {}) :
      "${k1}/${k2}" => merge(v2, {
        cdn_frontdoor_profile_id = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles_id["${k1}"]
      })
    }
  ]...)

  cdn_frontdoor_custom_domains = merge([
    for k1, v1 in var.cdn_frontdoor_profiles : {
      for k2, v2 in coalesce(v1.cdn_frontdoor_custom_domains, {}) :
      "${k1}/${k2}" => merge(v2, {
        cdn_frontdoor_profile_id = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles_id["${k1}"]
      })
    }
  ]...)

  cdn_frontdoor_endpoints = merge([
    for k1, v1 in var.cdn_frontdoor_profiles : {
      for k2, v2 in coalesce(v1.cdn_frontdoor_endpoints, {}) :
      "${k1}/${k2}" => merge(v2, {
        cdn_frontdoor_profile_id = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles_id["${k1}"]
      })
    }
  ]...)

  cdn_frontdoor_origin_groups = merge([
    for k1, v1 in var.cdn_frontdoor_profiles : {
      for k2, v2 in coalesce(v1.cdn_frontdoor_origin_groups, {}) :
      "${k1}/${k2}" => merge(v2, {
        cdn_frontdoor_profile_id = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles_id["${k1}"]
      })
    }
  ]...)

  cdn_frontdoor_rule_sets = merge([
    for k1, v1 in var.cdn_frontdoor_profiles : {
      for k2, v2 in coalesce(v1.cdn_frontdoor_rule_sets, {}) :
      "${k1}/${k2}" => merge(v2, {
        cdn_frontdoor_profile_id = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles_id["${k1}"]
      })
    }
  ]...)

  cdn_frontdoor_secrets = merge([
    for k1, v1 in var.cdn_frontdoor_profiles : {
      for k2, v2 in coalesce(v1.cdn_frontdoor_secrets, {}) :
      "${k1}/${k2}" => merge(v2, {
        cdn_frontdoor_profile_id = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles_id["${k1}"]
      })
    }
  ]...)

  cdn_frontdoor_security_policies = merge([
    for k1, v1 in var.cdn_frontdoor_profiles : {
      for k2, v2 in coalesce(v1.cdn_frontdoor_security_policies, {}) :
      "${k1}/${k2}" => merge(v2, {
        cdn_frontdoor_profile_id = module.cdn_frontdoor_profiles.cdn_frontdoor_profiles_id["${k1}"]
      })
    }
  ]...)

  cdn_frontdoor_custom_domain_associations = merge([
    for k1, v1 in var.cdn_frontdoor_profiles : merge([
      for k2, v2 in coalesce(v1.cdn_frontdoor_custom_domains, {}) : {
        for k3, v3 in coalesce(v2.cdn_frontdoor_custom_domain_associations, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          cdn_frontdoor_custom_domain_id = module.cdn_frontdoor_custom_domains.cdn_frontdoor_custom_domains_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)

  cdn_frontdoor_origins = merge([
    for k1, v1 in var.cdn_frontdoor_profiles : merge([
      for k2, v2 in coalesce(v1.cdn_frontdoor_origin_groups, {}) : {
        for k3, v3 in coalesce(v2.cdn_frontdoor_origins, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          cdn_frontdoor_origin_group_id = module.cdn_frontdoor_origin_groups.cdn_frontdoor_origin_groups_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)

  cdn_frontdoor_routes = merge([
    for k1, v1 in var.cdn_frontdoor_profiles : merge([
      for k2, v2 in coalesce(v1.cdn_frontdoor_endpoints, {}) : {
        for k3, v3 in coalesce(v2.cdn_frontdoor_routes, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          cdn_frontdoor_endpoint_id     = module.cdn_frontdoor_endpoints.cdn_frontdoor_endpoints_id["${k1}/${k2}"]
          cdn_frontdoor_origin_group_id = try(module.cdn_frontdoor_origin_groups.cdn_frontdoor_origin_groups_id["${k1}/${v3.cdn_frontdoor_origin_group_id}"], v3.cdn_frontdoor_origin_group_id)
        })
      }
    ]...)
  ]...)

  cdn_frontdoor_rules = merge([
    for k1, v1 in var.cdn_frontdoor_profiles : merge([
      for k2, v2 in coalesce(v1.cdn_frontdoor_rule_sets, {}) : {
        for k3, v3 in coalesce(v2.cdn_frontdoor_rules, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          cdn_frontdoor_rule_set_id = module.cdn_frontdoor_rule_sets.cdn_frontdoor_rule_sets_id["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)
}

module "cdn_frontdoor_profiles" {
  source                 = "git::https://github.com/AeternaModules/azurerm_cdn_frontdoor_profile.git?ref=v4.81.0"
  cdn_frontdoor_profiles = local.cdn_frontdoor_profiles
}

module "cdn_frontdoor_batch_rule_sets" {
  source                        = "git::https://github.com/AeternaModules/azurerm_cdn_frontdoor_batch_rule_set.git?ref=v4.81.0"
  cdn_frontdoor_batch_rule_sets = local.cdn_frontdoor_batch_rule_sets
  depends_on                    = [module.cdn_frontdoor_profiles]
}

module "cdn_frontdoor_custom_domains" {
  source                       = "git::https://github.com/AeternaModules/azurerm_cdn_frontdoor_custom_domain.git?ref=v4.81.0"
  cdn_frontdoor_custom_domains = local.cdn_frontdoor_custom_domains
  depends_on                   = [module.cdn_frontdoor_profiles]
}

module "cdn_frontdoor_endpoints" {
  source                  = "git::https://github.com/AeternaModules/azurerm_cdn_frontdoor_endpoint.git?ref=v4.81.0"
  cdn_frontdoor_endpoints = local.cdn_frontdoor_endpoints
  depends_on              = [module.cdn_frontdoor_profiles]
}

module "cdn_frontdoor_origin_groups" {
  source                      = "git::https://github.com/AeternaModules/azurerm_cdn_frontdoor_origin_group.git?ref=v4.81.0"
  cdn_frontdoor_origin_groups = local.cdn_frontdoor_origin_groups
  depends_on                  = [module.cdn_frontdoor_profiles]
}

module "cdn_frontdoor_rule_sets" {
  source                  = "git::https://github.com/AeternaModules/azurerm_cdn_frontdoor_rule_set.git?ref=v4.81.0"
  cdn_frontdoor_rule_sets = local.cdn_frontdoor_rule_sets
  depends_on              = [module.cdn_frontdoor_profiles]
}

module "cdn_frontdoor_secrets" {
  source                = "git::https://github.com/AeternaModules/azurerm_cdn_frontdoor_secret.git?ref=v4.81.0"
  cdn_frontdoor_secrets = local.cdn_frontdoor_secrets
  depends_on            = [module.cdn_frontdoor_profiles]
}

module "cdn_frontdoor_security_policies" {
  source                          = "git::https://github.com/AeternaModules/azurerm_cdn_frontdoor_security_policy.git?ref=v4.81.0"
  cdn_frontdoor_security_policies = local.cdn_frontdoor_security_policies
  depends_on                      = [module.cdn_frontdoor_profiles]
}

module "cdn_frontdoor_custom_domain_associations" {
  source                                   = "git::https://github.com/AeternaModules/azurerm_cdn_frontdoor_custom_domain_association.git?ref=v4.81.0"
  cdn_frontdoor_custom_domain_associations = local.cdn_frontdoor_custom_domain_associations
  depends_on                               = [module.cdn_frontdoor_custom_domains]
}

module "cdn_frontdoor_origins" {
  source                = "git::https://github.com/AeternaModules/azurerm_cdn_frontdoor_origin.git?ref=v4.81.0"
  cdn_frontdoor_origins = local.cdn_frontdoor_origins
  depends_on            = [module.cdn_frontdoor_origin_groups]
}

module "cdn_frontdoor_routes" {
  source               = "git::https://github.com/AeternaModules/azurerm_cdn_frontdoor_route.git?ref=v4.81.0"
  cdn_frontdoor_routes = local.cdn_frontdoor_routes
  depends_on           = [module.cdn_frontdoor_endpoints, module.cdn_frontdoor_origin_groups]
}

module "cdn_frontdoor_rules" {
  source              = "git::https://github.com/AeternaModules/azurerm_cdn_frontdoor_rule.git?ref=v4.81.0"
  cdn_frontdoor_rules = local.cdn_frontdoor_rules
  depends_on          = [module.cdn_frontdoor_rule_sets]
}

