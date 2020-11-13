# Terraform Module: AWS GuardDuty Delegated Admin Account

## Overview

Enable GuardDuty in an AWS Organizations' master account and designate a GuardDuty delegated administrator account.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| guardduty\_delegated\_admin\_account\_id | The account id of the account that will be GuardDuty's delegated admin. | `number` | n/a | yes |
| guarduty\_enabled | Whether to enable GuardDuty or not. | `bool` | `true` | no |
| guarduty\_finding\_publishing\_frequency | The frequency of findings publishing. | `string` | `"SIX_HOURS"` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->