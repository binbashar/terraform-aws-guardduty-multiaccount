# Change Log

All notable changes to this project will be documented in this file.

<a name="unreleased"></a>
## [Unreleased]



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


[Unreleased]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.7...HEAD
[v0.0.7]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.6...v0.0.7
[v0.0.6]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.5...v0.0.6
[v0.0.5]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.4...v0.0.5
[v0.0.4]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.3...v0.0.4
[v0.0.3]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.2...v0.0.3
[v0.0.2]: https://github.com/binbashar/terraform-aws-guardduty-multiaccount/compare/v0.0.1...v0.0.2
