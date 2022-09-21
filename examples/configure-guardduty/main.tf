#
# Configure GuardDuty: this is intended to be done from an account that has
# been designated to be a GuardDuty delegated admin.
#
# Important: since designating a GuardDuty delegated admin account automatically
# enables GuardDuty in that account, you will need to import
# "module.guardduty.aws_guardduty_detector.this" before you can properly use
# this example.
#
# In order to enable Malware Protection from the delegated Admin account, 
# make sure you have activated at the organizational level 
# the Service Principal: malware-protection.guardduty.amazonaws.com
# Reference document https://docs.aws.amazon.com/guardduty/latest/ug/malware-protection.html#:~:text=Establishing%20trusted%20access%20to%20enable%20Malware%20Protection
# Leverage Reference Architecture https://github.com/binbashar/le-tf-infra-aws/blob/master/management/global/organizations/organization.tf#L6

module "guardduty" {
  source = "../../modules/multiaccount-setup"

  # Activating Guardduty & S3 protection in this account (security-account).
  guarduty_enabled                       = true
  guarduty_s3_protection_enabled         = true
  guarduty_kubernetes_protection_enabled = true
  guarduty_malware_protection_enabled    = true

  # New Org Accounts will have Guardduty & S3 Protection automatically enabled
  guardduty_organization_members_auto_enable                       = true
  guardduty_organization_members_s3_protection_auto_enable         = true
  guardduty_organization_members_kubernetes_protection_auto_enable = true
  guardduty_organization_members_malware_protection_auto_enable    = true

  # Pre-existing Org Accounts (already members) have to be declared below
  guardduty_member_accounts = {
    shared = {
      account_id = 222222222222
      email      = "shared@example.com"
    },
    appsdevstg = {
      account_id = 333333333333
      email      = "appsdevstg@example.com"
    },
    appsprd = {
      account_id = 444444444444
      email      = "appsprd@example.com"
    },
    root = {
      account_id = 000000000000
      email      = "root@example.com"
    }
  }
}
