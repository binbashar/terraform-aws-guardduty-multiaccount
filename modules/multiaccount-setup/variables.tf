variable "guarduty_enabled" {
  type        = bool
  default     = true
  description = "Whether to enable GuardDuty or not."
}

variable "guarduty_s3_protection_enabled" {
  type        = bool
  default     = false
  description = "Whether to enable GuardDuty S3 protection or not."
}

variable "guarduty_kubernetes_protection_enabled" {
  type        = bool
  default     = false
  description = "Whether to enable Kubernetes protection or not."
}

variable "guarduty_malware_protection_enabled" {
  type        = bool
  default     = false
  description = "Whether to enable Malware protection or not."
}

variable "guarduty_finding_publishing_frequency" {
  type        = string
  default     = "SIX_HOURS"
  description = "The frequency of findings publishing."
}

variable "guardduty_organization_members_auto_enable" {
  type        = bool
  default     = false
  description = "Whether to automatically enable GuardDuty on organization members or not."
}

variable "guardduty_organization_members_s3_protection_auto_enable" {
  type        = bool
  default     = false
  description = "Whether to automatically enable GuardDuty S3 protection on organization members or not."
}

variable "guardduty_organization_members_kubernetes_protection_auto_enable" {
  type        = bool
  default     = false
  description = "Whether to automatically enable GuardDuty Kubernetes protection on organization members or not."
}

variable "guardduty_organization_members_malware_protection_auto_enable" {
  type        = bool
  default     = false
  description = "Whether to automatically enable GuardDuty Malware protection on organization members or not."
}

variable "guardduty_member_accounts" {
  type        = any
  default     = []
  description = "A collection of key-pairs that hold data about member accounts such as account_id, email and invite."
}
