module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ascotts+ctworkload1@amazon.co.uk"
    AccountName               = "ct-sandbox-aft-workload1"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "ascotts+ctworkload1@amazon.co.uk"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
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
