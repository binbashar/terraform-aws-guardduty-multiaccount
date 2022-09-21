<a href="https://github.com/binbashar">
    <img src="https://raw.githubusercontent.com/binbashar/le-ref-architecture-doc/master/docs/assets/images/logos/binbash-leverage-banner.png" width="1032" align="left" alt="Binbash"/>
</a>
<br clear="left"/>

# Terraform Module: AWS GuardDuty Multi-Account Setup

## Overview

This Terraform module can be used to implement AWS GuardDuty in a multi-account setup. That is designating a GuardDuty delegated admin account and then configuring the rest of GuardDuty in such account.

# Modules
* [delegated-admin](modules/delegated-admins/README.md)
* [multiaccount-setup](modules/multiaccount-setup/README.md)

## Examples

### Designate a delegated admin from the master account
This must be done from the master account of your Organization.

You must first enable GuardDuty in the master account and designate a
delegated admin account.

This is so you can later on manage GuardDuty from said delegated admin.

IMPORTANT: designating a GuardDuty delegate admin account will automatically
enable GuardDuty in that account.

```terraform
#
# We must first enable GuardDuty in the root account so it can be enabled
# later from GuardDuty's delegated admin.
#
# Also designate Security account as GuardDuty's delegated admin
#
module "guardduty" {
  source = "github.com/binbashar/terraform-aws-guardduty-multiaccount.git//guardduty-delegated-admin"

  guarduty_enabled                       = true
  guarduty_s3_protection_enabled         = true
  guarduty_kubernetes_protection_enabled = true
  guarduty_malware_protection_enabled    = true
  guardduty_delegated_admin_account_id   = 111111111111
}
```

### Configure GuardDuty in the Delegated Admin Account
Configure GuardDuty: this is intended to be done from an account that has
been designated to be a GuardDuty delegated admin.

**Important:** since designating a GuardDuty delegated admin account automatically
enables GuardDuty in that account, you will need to import
"module.guardduty.aws_guardduty_detector.this" before you can properly use
this example.

In order to enable Malware Protection from the delegated Admin account,
make sure you have activated at the organizational level
the Service Principal: malware-protection.guardduty.amazonaws.com
- Reference document: [malware-protection]
- Leverage Reference Architecture: [Terraform Code Reference]

```terraform
#
# GuardDuty is enabled in this account as a delegated admin
#
module "guardduty" {
  source = "github.com/binbashar/terraform-aws-guardduty-multiaccount.git//multiaccount-setup"

  # Activating Guardduty & S3 protection in this account (security-account).
  guarduty_enabled                       = true
  guarduty_s3_protection_enabled         = true
  guarduty_kubernetes_protection_enabled = true
  guarduty_malware_protection_enabled    = true

  # New Org Accounts will have Guardduty & S3 Protection automatically enabled
  guardduty_organization_members_auto_enable                    = true
  guardduty_organization_members_s3_protection_auto_enable      = true
  guardduty_organization_members_kubernetes_protection_enable   = true
  guardduty_organization_members_malware_protection_auto_enable = true

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

```
**Important:** It is correct that the account delegated as GuardDuty Admin (commonly Security) is not added in the `guardduty_member_accounts` list.

### Import Detector Module
To import the above module, you need to know the AWS GuardDuty Detector ID was enabled in the delegation process on the selected admin account. You can use aws-cli to quickly get these attributes

- Install [aws-cli]

- #### When you are using only `Terraform` (without a cli/wrapper tool)
```shell
## 1: Get AWS GuardDuty Detector ID

aws guardduty list-detectors --profile [AWS_PROFILE]

## 2: You should see a an output like this

{
    "DetectorIds": [
        "XXXXXXX"
    ]
}

## 3: Replace DETECTOR_ID and run Terraform import

terraform import module.guardduty.aws_guardduty_detector.this [DETECTOR_ID]

## Optional All-in-one Import Command

terraform import module.guardduty.aws_guardduty_detector.this $(aws guardduty list-detectors --profile [AWS_PROFILE] --query 'DetectorIds[0]')

```

- #### When you are using `binbash Leverage-cli`
```shell
## 1: Configure your AWS config & credentials files for your current project

export AWS_CONFIG_FILE=~/.aws/[PROJECT]/config
export AWS_SHARED_CREDENTIALS_FILE=~/.aws/[PROJECT]/credentials

## 2: Get AWS GuardDuty Detector ID

aws guardduty list-detectors --profile [AWS_PROFILE]

## 3: You should see a an output like this

{
    "DetectorIds": [
        "XXXXXXX"
    ]
}

## 4: Replace DETECTOR_ID and run Leverage Terraform import

leverage terraform import module.guardduty.aws_guardduty_detector.this [DETECTOR_ID]

## Optional All-in-one Import Command

leverage terraform import module.guardduty.aws_guardduty_detector.this $(aws guardduty list-detectors --profile [AWS_PROFILE] --query 'DetectorIds[0]')

```

---

## Binbash Leverage | DevOps Automation Code Library Integration

In order to get the full automated potential of the
[Binbash Leverage DevOps Automation Code Library](https://leverage.binbash.com.ar/how-it-works/code-library/code-library/)  
you should initialize all the necessary helper **Makefiles**.

#### How?
You must execute the `make init-makefiles` command  at the root context

```shell
╭─delivery at delivery-I7567 in ~/terraform/terraform-aws-backup-by-tags on master✔ 20-09-17
╰─⠠⠵ make
Available Commands:
 - init-makefiles     initialize makefiles

```

### Why?
You'll get all the necessary commands to automatically operate this module via a dockerized approach,
example shown below

```shell
╭─delivery at delivery-I7567 in ~/terraform/terraform-aws-backup-by-tags on master✔ 20-09-17
╰─⠠⠵ make
Available Commands:
 - circleci-validate-config  ## Validate A CircleCI Config (https
 - format-check        ## The terraform fmt is used to rewrite tf conf files to a canonical format and style.
 - format              ## The terraform fmt is used to rewrite tf conf files to a canonical format and style.
 - tf-dir-chmod        ## run chown in ./.terraform to gran that the docker mounted dir has the right permissions
 - version             ## Show terraform version
 - init-makefiles      ## initialize makefiles
```

```shell
╭─delivery at delivery-I7567 in ~/terraform/terraform-aws-backup-by-tags on master✔ 20-09-17
╰─⠠⠵ make format-check
docker run --rm -v /home/delivery/Binbash/repos/Leverage/terraform/terraform-aws-backup-by-tags:"/go/src/project/":rw -v :/config -v /common.config:/common-config/common.config -v ~/.ssh:/root/.ssh -v ~/.gitconfig:/etc/gitconfig -v ~/.aws/bb:/root/.aws/bb -e AWS_SHARED_CREDENTIALS_FILE=/root/.aws/bb/credentials -e AWS_CONFIG_FILE=/root/.aws/bb/config --entrypoint=/bin/terraform -w "/go/src/project/" -it binbash/terraform-awscli-slim:0.12.28 fmt -check
```

# Release Management
### CircleCi PR auto-release job

<div align="left">
  <img src="https://raw.githubusercontent.com/binbashar/terraform-aws-guardduty-multiaccount/master/figures/circleci-logo.png"
   alt="circleci" width="130"/>
</div>

- [**pipeline-job**](https://circleci.com/gh/binbashar/terraform-aws-guardduty-multiaccount) (**NOTE:** Will only run after merged PR)
- [**releases**](https://github.com/binbashar/terraform-aws-guardduty-multiaccount/releases)
- [**changelog**](https://github.com/binbashar/terraform-aws-guardduty-multiaccount/blob/master/CHANGELOG.md)


[aws-cli]: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
[malware-protection]: https://docs.aws.amazon.com/guardduty/latest/ug/malware-protection
[Terraform Code Reference]: https://github.com/binbashar/le-tf-infra-aws/blob/master/management/global/organizations/organization.tf#L6