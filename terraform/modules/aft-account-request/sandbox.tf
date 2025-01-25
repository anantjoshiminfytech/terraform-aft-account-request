module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "rs-aws-account-5z8qv+sandbox@riskspan.com"
    AccountName               = "Sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "rs-aws-account-5z8qv+sandbox@riskspan.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "RiskSpan"
  }

  account_tags = {
    "BuiltBy" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "RiskSpan"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "sandbox"
  }

  account_customizations_name = "sandbox"
}
