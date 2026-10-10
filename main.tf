resource "aws_evidently_feature" "evidently_features" {
  for_each = var.evidently_features

  name                = each.value.name
  project             = each.value.project
  default_variation   = each.value.default_variation
  description         = each.value.description
  entity_overrides    = each.value.entity_overrides
  evaluation_strategy = each.value.evaluation_strategy
  region              = each.value.region
  tags                = each.value.tags
  tags_all            = each.value.tags_all

  dynamic "variations" {
    for_each = each.value.variations
    content {
      name = variations.value.name
      value {
        bool_value   = variations.value.value.bool_value
        double_value = variations.value.value.double_value
        long_value   = variations.value.value.long_value
        string_value = variations.value.value.string_value
      }
    }
  }
}

