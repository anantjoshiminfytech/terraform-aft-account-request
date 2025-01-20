module "network" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "anant.joshi+rsnetwork@minfytech.com"
    AccountName               = "Network"
    ManagedOrganizationalUnit = "Infrastructure"
    SSOUserEmail              = "anant.joshi+rsnetwork@minfytech.com"
    SSOUserFirstName          = "Network"
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
    group = "infrastructure"
  }

  account_customizations_name = "infrastructure"
}
