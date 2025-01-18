module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "anant.joshi+rssandbox@minfytech.com"
    AccountName               = "sandbox-RiskSpan"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "anant.joshi+rssandbox@minfytech.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "RiskSpan"
  }

  account_tags = {
    "BuiltBy" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "sandbox"
  }

  account_customizations_name = "sandbox"
}
