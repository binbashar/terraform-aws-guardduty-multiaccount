#
# Configure GuardDuty: this is intended to be done from an account that has
# been designated to be a GuardDuty delegated admin.
#
# Important: since designating a GuardDuty delegated admin account automatically
# enables GuardDuty in that account, you will need to import
# "module.guardduty.aws_guardduty_detector.this" before you can properly use
# this example.
#
module "guardduty" {
  source = "../../modules/multiaccount-setup"

  guarduty_enabled                           = true
  guardduty_organization_members_auto_enable = false
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
