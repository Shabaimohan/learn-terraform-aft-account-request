module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "shabaimohan262@gmail.com"
    AccountName               = "CD"
    ManagedOrganizationalUnit = "sandbox"
    SSOUserEmail              = "shabaimohan262@gmail.com"
    SSOUserFirstName          = "mohan"
    SSOUserLastName           = "kala"
  }

  account_tags = {
    "OU" = "sandbox"
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
