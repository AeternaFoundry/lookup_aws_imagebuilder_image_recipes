variable "imagebuilder_image_recipes_lookup" {
  description = <<EOT
Map of imagebuilder_image_recipes_lookup, attributes below
Optional:
    - owner
    - region
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    owner  = optional(string)
    region = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

