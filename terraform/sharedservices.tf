module "sharedservices" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "anant.joshi+rssharedservices@minfytech.com"
    AccountName               = "SharedServices"
    ManagedOrganizationalUnit = "Infrastructure"
    SSOUserEmail              = "anant.joshi+rssharedservices@minfytech.com"
    SSOUserFirstName          = "Shared"
    SSOUserLastName           = "Services"
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
