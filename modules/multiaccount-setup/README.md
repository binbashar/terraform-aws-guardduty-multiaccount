# Terraform Module: AWS GuardDuty Multi-Account Setup

## Overview

Enable GuardDuty in a delegated admin account, configure member accounts and other settings.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_guardduty_detector.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_member.members](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_organization_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_organization_configuration) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_guardduty_member_accounts"></a> [guardduty\_member\_accounts](#input\_guardduty\_member\_accounts) | A collection of key-pairs that hold data about member accounts such as account\_id, email and invite. | `any` | `[]` | no |
| <a name="input_guardduty_organization_members_auto_enable"></a> [guardduty\_organization\_members\_auto\_enable](#input\_guardduty\_organization\_members\_auto\_enable) | Whether to automatically enable GuardDuty on organization members or not. | `bool` | `false` | no |
| <a name="input_guardduty_organization_members_kubernetes_protection_enable"></a> [guardduty\_organization\_members\_kubernetes\_protection\_enable](#input\_guardduty\_organization\_members\_kubernetes\_protection\_enable) | Whether to automatically enable GuardDuty Kubernetes protection on organization members or not. | `bool` | `false` | no |
| <a name="input_guardduty_organization_members_malware_protection_auto_enable"></a> [guardduty\_organization\_members\_malware\_protection\_auto\_enable](#input\_guardduty\_organization\_members\_malware\_protection\_auto\_enable) | Whether to automatically enable GuardDuty Malware protection on organization members or not. | `bool` | `false` | no |
| <a name="input_guardduty_organization_members_s3_protection_auto_enable"></a> [guardduty\_organization\_members\_s3\_protection\_auto\_enable](#input\_guardduty\_organization\_members\_s3\_protection\_auto\_enable) | Whether to automatically enable GuardDuty S3 protection on organization members or not. | `bool` | `false` | no |
| <a name="input_guarduty_enabled"></a> [guarduty\_enabled](#input\_guarduty\_enabled) | Whether to enable GuardDuty or not. | `bool` | `true` | no |
| <a name="input_guarduty_finding_publishing_frequency"></a> [guarduty\_finding\_publishing\_frequency](#input\_guarduty\_finding\_publishing\_frequency) | The frequency of findings publishing. | `string` | `"SIX_HOURS"` | no |
| <a name="input_guarduty_kubernetes_protection_enabled"></a> [guarduty\_kubernetes\_protection\_enabled](#input\_guarduty\_kubernetes\_protection\_enabled) | Whether to enable Kubernetes protection or not. | `bool` | `false` | no |
| <a name="input_guarduty_malware_protection_enabled"></a> [guarduty\_malware\_protection\_enabled](#input\_guarduty\_malware\_protection\_enabled) | Whether to enable Malware protection or not. | `bool` | `false` | no |
| <a name="input_guarduty_s3_protection_enabled"></a> [guarduty\_s3\_protection\_enabled](#input\_guarduty\_s3\_protection\_enabled) | Whether to enable GuardDuty S3 protection or not. | `bool` | `false` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->