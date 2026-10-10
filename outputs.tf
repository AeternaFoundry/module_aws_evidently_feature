output "evidently_features_id" {
  description = "Map of id values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.id if v.id != null && length(v.id) > 0 }
}
output "evidently_features_arn" {
  description = "Map of arn values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "evidently_features_created_time" {
  description = "Map of created_time values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.created_time if v.created_time != null && length(v.created_time) > 0 }
}
output "evidently_features_default_variation" {
  description = "Map of default_variation values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.default_variation if v.default_variation != null && length(v.default_variation) > 0 }
}
output "evidently_features_description" {
  description = "Map of description values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.description if v.description != null && length(v.description) > 0 }
}
output "evidently_features_entity_overrides" {
  description = "Map of entity_overrides values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.entity_overrides if v.entity_overrides != null && length(v.entity_overrides) > 0 }
}
output "evidently_features_evaluation_rules" {
  description = "Map of evaluation_rules values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.evaluation_rules if v.evaluation_rules != null && length(v.evaluation_rules) > 0 }
}
output "evidently_features_evaluation_strategy" {
  description = "Map of evaluation_strategy values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.evaluation_strategy if v.evaluation_strategy != null && length(v.evaluation_strategy) > 0 }
}
output "evidently_features_last_updated_time" {
  description = "Map of last_updated_time values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.last_updated_time if v.last_updated_time != null && length(v.last_updated_time) > 0 }
}
output "evidently_features_name" {
  description = "Map of name values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.name if v.name != null && length(v.name) > 0 }
}
output "evidently_features_project" {
  description = "Map of project values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.project if v.project != null && length(v.project) > 0 }
}
output "evidently_features_region" {
  description = "Map of region values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.region if v.region != null && length(v.region) > 0 }
}
output "evidently_features_status" {
  description = "Map of status values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.status if v.status != null && length(v.status) > 0 }
}
output "evidently_features_tags" {
  description = "Map of tags values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "evidently_features_tags_all" {
  description = "Map of tags_all values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "evidently_features_value_type" {
  description = "Map of value_type values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.value_type if v.value_type != null && length(v.value_type) > 0 }
}
output "evidently_features_variations" {
  description = "Map of variations values across all evidently_features, keyed the same as var.evidently_features"
  value       = { for k, v in aws_evidently_feature.evidently_features : k => v.variations if v.variations != null && length(v.variations) > 0 }
}

