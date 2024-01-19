provider "aws" {
  region = "eu-west-1"
}

resource "aws_wafv2_web_acl" "example" {
  name        = "example-waf-acl"
  scope       = "REGIONAL"
  description = "Example WAF ACL for eu-west-1"

  default_action {
    allow {}
  }

  visibility_config {
    cloudwatch_metrics_enabled = false
    metric_name                = "AWSManagedRulesCommonRuleSet"
    sampled_requests_enabled   = false
  }

  rule {
    name     = "AWSManagedRulesCommonRuleSet"
    priority = 0

    override_action {
      none {}
    }

    visibility_config {
      cloudwatch_metrics_enabled = false
      metric_name                = "AWSManagedRulesCommonRuleSet"
      sampled_requests_enabled   = false
    }

    statement {
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesCommonRuleSet"
        # No excluded_rules are specified, so all rules in the group will be active.
      }
    }
  }
}
