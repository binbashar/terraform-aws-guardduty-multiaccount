# Terraform Module: AWS GuardDuty Delegated Admin Account

## Overview

Enable GuardDuty in an AWS Organizations' master account and designate a GuardDuty delegated administrator account.

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
| [aws_guardduty_organization_admin_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_organization_admin_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_guardduty_delegated_admin_account_id"></a> [guardduty\_delegated\_admin\_account\_id](#input\_guardduty\_delegated\_admin\_account\_id) | The account id of the account that will be GuardDuty's delegated admin. | `number` | n/a | yes |
| <a name="input_guarduty_enabled"></a> [guarduty\_enabled](#input\_guarduty\_enabled) | Whether to enable GuardDuty or not. | `bool` | `true` | no |
| <a name="input_guarduty_finding_publishing_frequency"></a> [guarduty\_finding\_publishing\_frequency](#input\_guarduty\_finding\_publishing\_frequency) | The frequency of findings publishing. | `string` | `"SIX_HOURS"` | no |
| <a name="input_guarduty_s3_protection_enabled"></a> [guarduty\_s3\_protection\_enabled](#input\_guarduty\_s3\_protection\_enabled) | Whether to enable GuardDuty S3 protection or not. | `bool` | `true` | no |
| <a name="input_guarduty_kubernetes_protection_enabled"></a> [guarduty\_kubernetes\_protection\_enabled](#input\_guarduty\_kubernetes\_protection\_enabled) | Whether to enable GuardDuty Kubernetes protection or not. | `bool` | `true` | no |
| <a name="input_guarduty_malware_protection_enabled"></a> [guarduty\_malware\_protection\_enabled](#input\_guarduty\_malware\_protection\_enabled) | Whether to enable GuardDuty Malware protection or not. | `bool` | `true` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->