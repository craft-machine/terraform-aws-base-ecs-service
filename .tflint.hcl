plugin "aws" {
  enabled = true
  version = "0.11.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

rule "terraform_documented_variables" {
  enabled = true
}

rule "terraform_typed_variables" {
  enabled = true
}

rule "terraform_unused_declarations" {
  enabled = true
}

rule "terraform_naming_convention" {
  enabled = true
  format = "snake_case"
}