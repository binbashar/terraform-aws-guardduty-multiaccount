# Terraform Module: AWS GuardDuty Multi-Account Setup

## Overview

Enable GuardDuty in a delegated admin account, configure member accounts and other settings.

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
| guardduty\_member\_accounts | A collection of key-pairs that hold data about member accounts such as account\_id, email and invite. | `any` | `[]` | no |
| guardduty\_organization\_members\_auto\_enable | Whether to automatically enable GuardDuty on organization members or not. | `bool` | `true` | no |
| guarduty\_enabled | Whether to enable GuardDuty or not. | `bool` | `true` | no |
| guarduty\_finding\_publishing\_frequency | The frequency of findings publishing. | `string` | `"SIX_HOURS"` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->