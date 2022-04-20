module "workload2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ascotts+ctworkload2@amazon.co.uk"
    AccountName               = "ct-sandbox-aft-workload2"
    ManagedOrganizationalUnit = "Workloads"
    SSOUserEmail              = "ascotts+ctworkload2@amazon.co.uk"
    SSOUserFirstName          = "Workloads2"
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

  account_customizations_name = "workload2"
}
