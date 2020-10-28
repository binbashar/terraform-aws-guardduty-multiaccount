resource "aws_guardduty_detector" "this" {
  provider                     = aws.main
  enable                       = var.guarduty_enabled
  finding_publishing_frequency = var.guarduty_finding_publishing_frequency
}

resource "aws_guardduty_organization_admin_account" "this" {
  provider         = aws.main
  admin_account_id = var.guardduty_delegated_admin_account_id
}
