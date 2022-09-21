resource "aws_guardduty_detector" "this" {
  enable                       = var.guarduty_enabled
  finding_publishing_frequency = var.guarduty_finding_publishing_frequency

  datasources {
    s3_logs {
      enable = var.guarduty_s3_protection_enabled
    }
    kubernetes {
      audit_logs {
        enable = var.guarduty_kubernetes_protection_enabled
      }
    }
    malware_protection {
      scan_ec2_instance_with_findings {
        ebs_volumes {
          enable = var.guarduty_malware_protection_enabled
        }
      }
    }
  }
}

resource "aws_guardduty_organization_admin_account" "this" {
  admin_account_id = var.guardduty_delegated_admin_account_id
}
