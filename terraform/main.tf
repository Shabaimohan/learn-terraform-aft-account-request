module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "shabaimohan_trails@gmail.com"
    AccountName               = "trails"
    ManagedOrganizationalUnit = "Practicing"
    SSOUserEmail              = "shabaimohan_trails@gmail.com"
    SSOUserFirstName          = "Shabai"
    SSOUserLastName           = "mohan"
  }

  account_tags = {
    "OU" = "practicing"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
