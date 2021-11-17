variable "guarduty_enabled" {
  type        = bool
  default     = true
  description = "Whether to enable GuardDuty or not."
}

variable "guarduty_s3_protection_enabled" {
  type        = bool
  default     = true
  description = "Whether to enable GuardDuty S3 protection or not."
}

variable "guarduty_finding_publishing_frequency" {
  type        = string
  default     = "SIX_HOURS"
  description = "The frequency of findings publishing."
}

variable "guardduty_delegated_admin_account_id" {
  type        = number
  description = "The account id of the account that will be GuardDuty's delegated admin."
}
