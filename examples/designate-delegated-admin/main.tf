#
# This must be done from the master account of your Organization.
#
# You must first enable GuardDuty in the master account and designate a
# delegated admin account.
#
# This is so you can later on manage GuardDuty from said delegated admin.
#
# IMPORTANT: designating a GuardDuty delegate admin account will automatically
# enable GuardDuty in that account.
#
module "guardduty" {
  source = "../../modules/guardduty-delegated-admin"

  guarduty_enabled                     = true
  guardduty_delegated_admin_account_id = 111111111111
}
