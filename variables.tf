variable "cdn_frontdoor_profiles" {
  description = <<EOT
Map of cdn_frontdoor_profiles, attributes below
Required:
    - name
    - resource_group_name
    - sku_name
Optional:
    - response_timeout_seconds
    - tags
    - identity (block)
    - log_scrubbing_rule (block)
Nested cdn_frontdoor_custom_domains (azurerm_cdn_frontdoor_custom_domain):
    Required:
        - host_name
        - name
        - tls (block)
    Optional:
        - dns_zone_id
    Nested cdn_frontdoor_custom_domain_associations (azurerm_cdn_frontdoor_custom_domain_association):
        Required:
            - cdn_frontdoor_route_ids
Nested cdn_frontdoor_endpoints (azurerm_cdn_frontdoor_endpoint):
    Required:
        - name
    Optional:
        - enabled
        - tags
    Nested cdn_frontdoor_routes (azurerm_cdn_frontdoor_route):
        Required:
            - cdn_frontdoor_origin_group_id
            - name
            - patterns_to_match
            - supported_protocols
        Optional:
            - cdn_frontdoor_custom_domain_ids
            - cdn_frontdoor_origin_ids
            - cdn_frontdoor_origin_path
            - cdn_frontdoor_rule_set_ids
            - enabled
            - forwarding_protocol
            - https_redirect_enabled
            - link_to_default_domain
            - cache (block)
Nested cdn_frontdoor_origin_groups (azurerm_cdn_frontdoor_origin_group):
    Required:
        - name
        - load_balancing (block)
    Optional:
        - restore_traffic_time_to_healed_or_new_endpoint_in_minutes
        - session_affinity_enabled
        - health_probe (block)
    Nested cdn_frontdoor_origins (azurerm_cdn_frontdoor_origin):
        Required:
            - certificate_name_check_enabled
            - host_name
            - name
        Optional:
            - enabled
            - http_port
            - https_port
            - origin_host_header
            - priority
            - weight
            - private_link (block)
Nested cdn_frontdoor_rule_sets (azurerm_cdn_frontdoor_rule_set):
    Required:
        - name
    Nested cdn_frontdoor_rules (azurerm_cdn_frontdoor_rule):
        Required:
            - name
            - order
            - actions (block)
        Optional:
            - behavior_on_match
            - conditions (block)
Nested cdn_frontdoor_secrets (azurerm_cdn_frontdoor_secret):
    Required:
        - name
        - secret (block)
Nested cdn_frontdoor_security_policies (azurerm_cdn_frontdoor_security_policy):
    Required:
        - name
        - security_policies (block)
EOT

  type = map(object({
    name                     = string
    resource_group_name      = string
    sku_name                 = string
    response_timeout_seconds = optional(number) # Default: 120
    tags                     = optional(map(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    log_scrubbing_rule = optional(list(object({
      match_variable = string
    })))
    cdn_frontdoor_custom_domains = optional(map(object({
      host_name   = string
      name        = string
      dns_zone_id = optional(string)
      tls = object({
        cdn_frontdoor_secret_id = optional(string)
        certificate_type        = optional(string) # Default: "ManagedCertificate"
        cipher_suite = optional(object({
          custom_ciphers = optional(object({
            tls12 = optional(set(string))
            tls13 = optional(set(string))
          }))
          type = string
        }))
        minimum_tls_version = optional(string)
        minimum_version     = optional(string)
      })
      cdn_frontdoor_custom_domain_associations = optional(map(object({
        cdn_frontdoor_route_ids = list(string)
      })))
    })))
    cdn_frontdoor_endpoints = optional(map(object({
      name    = string
      enabled = optional(bool) # Default: true
      tags    = optional(map(string))
      cdn_frontdoor_routes = optional(map(object({
        cdn_frontdoor_origin_group_id   = string
        name                            = string
        patterns_to_match               = list(string)
        supported_protocols             = set(string)
        cdn_frontdoor_custom_domain_ids = optional(set(string))
        cdn_frontdoor_origin_ids        = optional(list(string))
        cdn_frontdoor_origin_path       = optional(string)
        cdn_frontdoor_rule_set_ids      = optional(set(string))
        enabled                         = optional(bool)   # Default: true
        forwarding_protocol             = optional(string) # Default: "MatchRequest"
        https_redirect_enabled          = optional(bool)   # Default: true
        link_to_default_domain          = optional(bool)   # Default: true
        cache = optional(object({
          compression_enabled           = optional(bool) # Default: false
          content_types_to_compress     = optional(list(string))
          query_string_caching_behavior = optional(string) # Default: "IgnoreQueryString"
          query_strings                 = optional(list(string))
        }))
      })))
    })))
    cdn_frontdoor_origin_groups = optional(map(object({
      name                                                      = string
      restore_traffic_time_to_healed_or_new_endpoint_in_minutes = optional(number) # Default: 10
      session_affinity_enabled                                  = optional(bool)   # Default: true
      load_balancing = object({
        additional_latency_in_milliseconds = optional(number) # Default: 50
        sample_size                        = optional(number) # Default: 4
        successful_samples_required        = optional(number) # Default: 3
      })
      health_probe = optional(object({
        interval_in_seconds = number
        path                = optional(string) # Default: "/"
        protocol            = string
        request_type        = optional(string) # Default: "HEAD"
      }))
      cdn_frontdoor_origins = optional(map(object({
        certificate_name_check_enabled = bool
        host_name                      = string
        name                           = string
        enabled                        = optional(bool)   # Default: true
        http_port                      = optional(number) # Default: 80
        https_port                     = optional(number) # Default: 443
        origin_host_header             = optional(string)
        priority                       = optional(number) # Default: 1
        weight                         = optional(number) # Default: 500
        private_link = optional(object({
          location               = string
          private_link_target_id = string
          request_message        = optional(string) # Default: "Access request for CDN FrontDoor Private Link Origin"
          target_type            = optional(string)
        }))
      })))
    })))
    cdn_frontdoor_rule_sets = optional(map(object({
      name = string
      cdn_frontdoor_rules = optional(map(object({
        name              = string
        order             = number
        behavior_on_match = optional(string) # Default: "Continue"
        actions = object({
          request_header_action = optional(list(object({
            header_action = string
            header_name   = string
            value         = optional(string)
          })))
          response_header_action = optional(list(object({
            header_action = string
            header_name   = string
            value         = optional(string)
          })))
          route_configuration_override_action = optional(object({
            cache_behavior                = optional(string)
            cache_duration                = optional(string)
            cdn_frontdoor_origin_group_id = optional(string)
            compression_enabled           = optional(bool)
            forwarding_protocol           = optional(string)
            query_string_caching_behavior = optional(string)
            query_string_parameters       = optional(list(string))
          }))
          url_redirect_action = optional(object({
            destination_fragment = optional(string) # Default: ""
            destination_hostname = string
            destination_path     = optional(string) # Default: ""
            query_string         = optional(string) # Default: ""
            redirect_protocol    = optional(string) # Default: "MatchRequest"
            redirect_type        = string
          }))
          url_rewrite_action = optional(object({
            destination             = string
            preserve_unmatched_path = optional(bool) # Default: false
            source_pattern          = string
          }))
        })
        conditions = optional(object({
          client_port_condition = optional(list(object({
            match_values     = optional(list(string))
            negate_condition = optional(bool) # Default: false
            operator         = string
          })))
          cookies_condition = optional(list(object({
            cookie_name      = string
            match_values     = optional(list(string))
            negate_condition = optional(bool) # Default: false
            operator         = string
            transforms       = optional(set(string))
          })))
          host_name_condition = optional(list(object({
            match_values     = optional(list(string))
            negate_condition = optional(bool) # Default: false
            operator         = string
            transforms       = optional(set(string))
          })))
          http_version_condition = optional(list(object({
            match_values     = set(string)
            negate_condition = optional(bool)   # Default: false
            operator         = optional(string) # Default: "Equal"
          })))
          is_device_condition = optional(list(object({
            match_values     = optional(list(string))
            negate_condition = optional(bool)   # Default: false
            operator         = optional(string) # Default: "Equal"
          })))
          post_args_condition = optional(list(object({
            match_values     = optional(list(string))
            negate_condition = optional(bool) # Default: false
            operator         = string
            post_args_name   = string
            transforms       = optional(set(string))
          })))
          query_string_condition = optional(list(object({
            match_values     = optional(list(string))
            negate_condition = optional(bool) # Default: false
            operator         = string
            transforms       = optional(set(string))
          })))
          remote_address_condition = optional(list(object({
            match_values     = optional(list(string))
            negate_condition = optional(bool)   # Default: false
            operator         = optional(string) # Default: "IPMatch"
          })))
          request_body_condition = optional(list(object({
            match_values     = list(string)
            negate_condition = optional(bool) # Default: false
            operator         = string
            transforms       = optional(set(string))
          })))
          request_header_condition = optional(list(object({
            header_name      = string
            match_values     = optional(list(string))
            negate_condition = optional(bool) # Default: false
            operator         = string
            transforms       = optional(set(string))
          })))
          request_method_condition = optional(list(object({
            match_values     = set(string)
            negate_condition = optional(bool)   # Default: false
            operator         = optional(string) # Default: "Equal"
          })))
          request_scheme_condition = optional(list(object({
            match_values     = optional(list(string))
            negate_condition = optional(bool)   # Default: false
            operator         = optional(string) # Default: "Equal"
          })))
          request_uri_condition = optional(list(object({
            match_values     = optional(list(string))
            negate_condition = optional(bool) # Default: false
            operator         = string
            transforms       = optional(set(string))
          })))
          server_port_condition = optional(list(object({
            match_values     = set(string)
            negate_condition = optional(bool) # Default: false
            operator         = string
          })))
          socket_address_condition = optional(list(object({
            match_values     = optional(list(string))
            negate_condition = optional(bool)   # Default: false
            operator         = optional(string) # Default: "IPMatch"
          })))
          ssl_protocol_condition = optional(list(object({
            match_values     = set(string)
            negate_condition = optional(bool)   # Default: false
            operator         = optional(string) # Default: "Equal"
          })))
          url_file_extension_condition = optional(list(object({
            match_values     = list(string)
            negate_condition = optional(bool) # Default: false
            operator         = string
            transforms       = optional(set(string))
          })))
          url_filename_condition = optional(list(object({
            match_values     = optional(list(string))
            negate_condition = optional(bool) # Default: false
            operator         = string
            transforms       = optional(set(string))
          })))
          url_path_condition = optional(list(object({
            match_values     = optional(list(string))
            negate_condition = optional(bool) # Default: false
            operator         = string
            transforms       = optional(set(string))
          })))
        }))
      })))
    })))
    cdn_frontdoor_secrets = optional(map(object({
      name = string
      secret = object({
        customer_certificate = list(object({
          key_vault_certificate_id = string
        }))
      })
    })))
    cdn_frontdoor_security_policies = optional(map(object({
      name = string
      security_policies = object({
        firewall = object({
          association = object({
            domain = list(object({
              cdn_frontdoor_domain_id = string
            }))
            patterns_to_match = list(string)
          })
          cdn_frontdoor_firewall_policy_id = string
        })
      })
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.cdn_frontdoor_profiles) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.cdn_frontdoor_profiles : [for kk in keys(coalesce(v0.cdn_frontdoor_custom_domains, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.cdn_frontdoor_profiles : [for k1, v1 in coalesce(v0.cdn_frontdoor_custom_domains, {}) : [for kk in keys(coalesce(v1.cdn_frontdoor_custom_domain_associations, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.cdn_frontdoor_profiles : [for kk in keys(coalesce(v0.cdn_frontdoor_endpoints, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.cdn_frontdoor_profiles : [for k1, v1 in coalesce(v0.cdn_frontdoor_endpoints, {}) : [for kk in keys(coalesce(v1.cdn_frontdoor_routes, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.cdn_frontdoor_profiles : [for kk in keys(coalesce(v0.cdn_frontdoor_origin_groups, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.cdn_frontdoor_profiles : [for k1, v1 in coalesce(v0.cdn_frontdoor_origin_groups, {}) : [for kk in keys(coalesce(v1.cdn_frontdoor_origins, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.cdn_frontdoor_profiles : [for kk in keys(coalesce(v0.cdn_frontdoor_rule_sets, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.cdn_frontdoor_profiles : [for k1, v1 in coalesce(v0.cdn_frontdoor_rule_sets, {}) : [for kk in keys(coalesce(v1.cdn_frontdoor_rules, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.cdn_frontdoor_profiles : [for kk in keys(coalesce(v0.cdn_frontdoor_secrets, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.cdn_frontdoor_profiles : [for kk in keys(coalesce(v0.cdn_frontdoor_security_policies, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
