#
# Enable GuardDuty in this account.
# Important: this needs to be imported as GuardDuty is automatically
# when you set this account as a delegated admin.
#
resource "aws_guardduty_detector" "this" {
  enable                       = var.guarduty_enabled
  finding_publishing_frequency = var.guarduty_finding_publishing_frequency

}

resource "aws_guardduty_detector_feature" "this" {
  for_each = toset(var.guardduty_features)

  detector_id = aws_guardduty_detector.this.id
  name        = each.key
  status      = "ENABLED"

  dynamic "additional_configuration" {
    for_each = each.key == "RUNTIME_MONITORING" ? [1] : []
    content {
        name   = "EKS_ADDON_MANAGEMENT"
        status = "ENABLED"
    }
  }

  dynamic "additional_configuration" {
    for_each = each.key == "RUNTIME_MONITORING" ? [1] : []
    content {
        name   = "ECS_FARGATE_AGENT_MANAGEMENT"
        status = "ENABLED"
    }
  }

  dynamic "additional_configuration" {
    for_each = each.key == "RUNTIME_MONITORING" ? [1] : []
    content {
        name   = "EC2_AGENT_MANAGEMENT"
        status = "ENABLED"
    }
  }
}

# Set auto_enable to true if you want GuardDuty to be enabled in all of your
# organization member accounts
resource "aws_guardduty_organization_configuration" "this" {
  auto_enable_organization_members = var.auto_enable_organization_members
  detector_id = aws_guardduty_detector.this.id
}

resource "aws_guardduty_organization_configuration_feature" "this" {
  for_each = toset(var.guardduty_features)

  detector_id = aws_guardduty_detector.this.id
  name        = each.key
  auto_enable = var.auto_enable_organization_members

  dynamic "additional_configuration" {
    for_each = each.key == "EKS_ADDON_MANAGEMENT" ? [1] : []
    content {
        name   = "EKS_ADDON_MANAGEMENT"
        auto_enable = var.auto_enable_organization_members
    }
  }

  dynamic "additional_configuration" {
    for_each = each.key == "EKS_ADDON_MANAGEMENT" ? [1] : []
    content {
        name   = "ECS_FARGATE_AGENT_MANAGEMENT"
        auto_enable = var.auto_enable_organization_members
    }
  }

  dynamic "additional_configuration" {
    for_each = each.key == "RUNTIME_MONITORING" ? [1] : []
    content {
        name   = "EC2_AGENT_MANAGEMENT"
        auto_enable = var.auto_enable_organization_members
    }
  }
}

#
# Define explicitly all GuardDuty enabled accounts
# Note: a lifecycle is used because email and invite trigger changes every time.
#
resource "aws_guardduty_member" "members" {
  for_each = var.guardduty_member_accounts

  account_id  = can(each.value.account_id) ? each.value.account_id : null
  detector_id = aws_guardduty_detector.this.id
  email       = can(each.value.email) ? each.value.email : null
  invite      = can(each.value.invite) ? each.value.invite : false
  lifecycle {
    ignore_changes = [email, invite]
  }
}
