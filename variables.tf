variable "evidently_features" {
  description = <<EOT
Map of evidently_features, attributes below
Required:
    - name
    - project
    - variations (block):
        - name (required)
        - value (required, block):
            - bool_value (optional)
            - double_value (optional)
            - long_value (optional)
            - string_value (optional)
Optional:
    - default_variation
    - description
    - entity_overrides
    - evaluation_strategy
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    name                = string
    project             = string
    default_variation   = optional(string)
    description         = optional(string)
    entity_overrides    = optional(map(string))
    evaluation_strategy = optional(string)
    region              = optional(string)
    tags                = optional(map(string))
    tags_all            = optional(map(string))
    variations = list(object({
      name = string
      value = object({
        bool_value   = optional(string)
        double_value = optional(string)
        long_value   = optional(string)
        string_value = optional(string)
      })
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.evidently_features : (
        length(v.variations) >= 1 && length(v.variations) <= 5
      )
    ])
    error_message = "Each variations list must contain between 1 and 5 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.evidently_features : (
        v.default_variation == null || ((length(v.default_variation) >= 1 && length(v.default_variation) <= 127) && (can(regex("^[0-9A-Za-z_.-]*$", v.default_variation))))
      )
    ])
    error_message = "all of: must be between 1 and 127 characters; alphanumeric and can contain hyphens, underscores, and periods"
  }
  validation {
    condition = alltrue([
      for k, v in var.evidently_features : (
        (length(v.project) >= 0 && length(v.project) <= 2048) && (can(regex("(^[0-9A-Za-z_.-]*$)|(arn:[^:]*:[^:]*:[^:]*:[^:]*:project/[0-9A-Za-z_.-]*)", v.project)))
      )
    ])
    error_message = "all of: must be between 0 and 2048 characters; name or arn of the project"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

