# Change Log

All notable changes to this project will be documented in this file.

<a name="unreleased"></a>
## [Unreleased]



<a name="v0.2.0"></a>
## [v0.2.0] - 2022-09-21

- Feature | Add AWS GuardDuty Kubernetes and Malware Protection for Multi-Account Setup (with Delegated Malware Protection Admin)
- Change Kubernetes Protection Enabled variable name for Organizations Members
- Prune variables.tf
- Prune .pre-commit-config.yaml
- Prune and format code by pre-commit lint
- Add references to configuration settings on Active Core Services at AWS Organizations level
- Change release scope from patch to minor
- Run pre-commit and update README.md (terraform_docs)
- Update constraints for AWS Terraform Provider and change to false defaults values for S3, Kubernetes and Malware Protection
- Update example for multi-account setup
- Change argument name for kubernetes datasource
- Fix variable name
- Change made by pre-commit hook
- Add configuration required for kubernetes and malware protection on multi-account setup
- Change made by pre-commit hook
- Back to previous pre-commit-hook version
- Remove inputs descriptions
- Add Kubernetes and Malware protection config block con boolean enabled/disabled variable
- Change hooks ids
- Remove terraform_tflint
- Remove terraform_tflint
- Change pre-commit repo url
- Change pre-commit to test
- Change url pre-commit repo
- Format name (to lowercase)
- Fix - Clean example command line
- Update shell examples in README.md
- Update steps related to the delegation and import guardduty detector


<a name="v0.1.1"></a>
## [v0.1.1] - 2022-08-23

- Update README.md


<a name="v0.0.12"></a>
## [v0.0.12] - 2021-11-18



<a name="v0.1.0"></a>
## [v0.1.0] - 2021-11-18

- updating README.md with terraform docs
- Merge branch 'master' of github.com:binbashar/terraform-aws-guardduty-multiaccount
- fixing typo in var name


<a name="v0.0.11"></a>
## [v0.0.11] - 2021-11-18

- fixing auto_enable parameter name


<a name="v0.0.10"></a>
## [v0.0.10] - 2021-11-18

- fixing terraform docs
- Adding support to whether to automatically enable GuardDuty S3 protection on organization members or not.


<a name="v0.0.9"></a>
## [v0.0.9] - 2021-11-17

- all tests passed locally
- testing latest terraform-doc version
- adding --version flag to terraform-dos in order to validate + updating pre-commit terraform repo
- updating terraform-docs at circleci config file
- updating terraform-docs at circleci config file
- updating circleci config
- modules/multiaccount-setup adding support for guarduty s3 protection
- modules/delegated-admin adding support for guarduty s3 protection
- Updating makefile to use new terraform 1.0.9 version lib files


<a name="v0.0.8"></a>
## [v0.0.8] - 2021-10-08

- Create FUNDING.yml


<a name="v0.0.7"></a>
## [v0.0.7] - 2020-11-16

- BBL-440 | circleci config allowing sumologic for every job


<a name="v0.0.6"></a>
## [v0.0.6] - 2020-11-15

- BBL-440 | rolling back sintaxt to get tests passing
- BBL-440 | improving failed notif
- BBL-440 | forcing job to fail to check slack notif
- BBL-440 | slack notif in place
- BBL-440 | updating both pass and fail slack notif
- BBL-440 | adding emojis to slack notif :)
- BBL-440 | improving circle slack notif stintaxt
- BBL-440 | fixing username var at circleci slack notif
- BBL-440 | circleci slack notif sintaxt improved
- BBL-440 | replacing circle to slack username var
- BBL-440 | improving slack notif
- BBL-440 | updating slack ci notif template


<a name="v0.0.5"></a>
## [v0.0.5] - 2020-11-14

- BBL-440 | updating circleci slack notif message


<a name="v0.0.4"></a>
## [v0.0.4] - 2020-11-13

- BBL-440 | rolling back to official circleci orb
- BBL-440 | removing heroku notif because of permission errors
- BBL-440 | testing slack notif orbs
- BBL-440 | using default templates for notifications
- BBL-440 | testing with single quotes
- BBL-440 | explicitely setting tool-ci channel to circle slack notif
- BBL-440 | slack channel globally seted via context
- BBL-440 | testing custom slack message
- BBL-440 | removing not necessary context
- BBL-440 | adding context to slack notify cmd
- BBL-440 | testing slack orb int
- BBL-440 | including makefile for tf-lint validation
- BBL-440 | fixing circleci/config.yaml paths
- BBL-440 | fixing circleci/config.yaml
- BBL-440 | fixing circleci/config.yaml
- BBL-440 | updating circleci config to run pre-commit format + tf-docs - slack notif updated
- BBL-440 | adding .gitallowed patterns
- BBL-440 | adding .gitallow to for aws git-secrets to allow acount IDs passing


<a name="v0.0.3"></a>
## [v0.0.3] - 2020-10-29

- Merge branch 'master' of github.com:binbashar/terraform-aws-guardduty-multiaccount
- Fix modules docs links


<a name="v0.0.2"></a>
## [v0.0.2] - 2020-10-29

- Merge branch 'master' of github.com:binbashar/terraform-aws-guardduty-multiaccount
- Add missing documentation


<a name="v0.0.1"></a>
## v0.0.1 - 2020-10-29

- Fix links in README
- Create README, LICENSE, CircleCI file, Github templates, examples, and move modules to a modules dir
- Refactor module to remove mandatory provider
- Create separate modules for setting up GuardDuty using a multi-account setup and for configuring a delegated admin
- Fix readme
- Create module to set up the GuardDuty delegated admin and its member accounts
- Initial commit


[Unreleased]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.2.0...HEAD
[v0.2.0]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.1.1...v0.2.0
[v0.1.1]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.12...v0.1.1
[v0.0.12]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.1.0...v0.0.12
[v0.1.0]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.11...v0.1.0
[v0.0.11]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.10...v0.0.11
[v0.0.10]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.9...v0.0.10
[v0.0.9]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.8...v0.0.9
[v0.0.8]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.7...v0.0.8
[v0.0.7]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.6...v0.0.7
[v0.0.6]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.5...v0.0.6
[v0.0.5]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.4...v0.0.5
[v0.0.4]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.3...v0.0.4
[v0.0.3]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.2...v0.0.3
[v0.0.2]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.1...v0.0.2
