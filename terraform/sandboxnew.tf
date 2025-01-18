module "sandboxnew" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "anant.joshi+rssandboxnew@minfytech.com"
    AccountName               = "sandboxnew-RiskSpan"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "anant.joshi+rssandboxnew@minfytech.com"
    SSOUserFirstName          = "SandboxNew"
    SSOUserLastName           = "RiskSpan"
  }

  account_tags = {
    "BuiltBy" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "sandbox"
  }

  account_customizations_name = "sandbox"
}
