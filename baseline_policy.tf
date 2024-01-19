provider "aws" {
  region = "eu-west-1"
}
 
 
resource "aws_wafv2_web_acl" "example" {
  name        = "webacl-example"
  scope       = "REGIONAL"
  description = "Full configuration WAF ACL"
 
  default_action {
    allow {}
  }
 
  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "acl-full"
    sampled_requests_enabled   = true
  }
 
   # Staging AWSManagedRulesCommonRuleSet
 
  rule {
    name     = "AWS-AWSManagedRulesCommonRuleSet-staging"
    priority = 100
 
    override_action {
      count {}
    }
 
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesCommonRuleSet-staging"
      sampled_requests_enabled   = true
    }
 
    statement {
 
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesCommonRuleSet"
        version     = "Version_1.11"
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "NoUserAgent_HEADER"
        }
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "SizeRestrictions_QUERYSTRING"
        }
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "SizeRestrictions_Cookie_HEADER"
        }
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "SizeRestrictions_BODY"
        }
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "SizeRestrictions_URIPATH"
        }
 
 
 
      }
    }
  }
  
    # Production AWSManagedRulesCommonRuleSet
 
  rule {
    name     = "AWS-AWSManagedRulesCommonRuleSet-production"
    priority = 110
 
    override_action {
      none {}
    }
 
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesCommonRuleSet-production"
      sampled_requests_enabled   = true
 
    }
 
 
    statement {
 
      managed_rule_group_statement {
 
        vendor_name = "AWS"
        name        = "AWSManagedRulesCommonRuleSet"
        version     = "Version_1.10"
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "NoUserAgent_HEADER"
        }
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "SizeRestrictions_QUERYSTRING"
        }
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "SizeRestrictions_Cookie_HEADER"
        }
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "SizeRestrictions_BODY"
        }
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "SizeRestrictions_URIPATH"
        }
      }
    }
  }
 
 
   
  # Staging AWSManagedRulesSQLiRuleset
 
  rule {
    name     = "AWS-AWSManagedRulesSQLiRuleSet-staging"
    priority = 120
 
    override_action {
      count {}
    }
 
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesSQLiRuleSet-staging"
      sampled_requests_enabled   = true
    }
 
    statement {
 
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesSQLiRuleSet"
        version     = "Version_2.0"
 
      }
    }
  }
 
 # Production AWSManagedRulesSQLiRuleset
 
  rule {
    name     = "AWS-AWSManagedRulesSQLiRuleSet-production"
    priority = 130
 
    override_action {
      none {}
    }
 
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesSQLiRuleSet-production"
      sampled_requests_enabled   = true
    }
 
    statement {
 
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesSQLiRuleSet"
        version     = "Version_1.1"
 
      }
    }
  }
 
 
 
 
  # Staging AWSManagedRulesKnownBadInputsRuleSet
 
  rule {
    name     = "AWS-AWSManagedRulesKnownBadInputsRuleSet-staging"
    priority = 140
 
    override_action {
      count {}
    }
 
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesKnownBadInputsRuleSet-staging"
      sampled_requests_enabled   = true
    }
 
    statement {
 
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesKnownBadInputsRuleSet"
        version     = "Version_1.21"
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "Log4JRCE_HEADER"
        }
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "Log4JRCE_QUERYSTRING"
        }
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "Log4JRCE_BODY"
        }
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "Log4JRCE_URIPATH"
        }
 
      }
    }
  }
 
      # Production AWSManagedRulesKnownBadInputsRuleSet
 
  rule {
    name     = "AWS-AWSManagedRulesKnownBadInputsRuleSet-production"
    priority = 150
 
    override_action {
      none {}
    }
 
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesKnownBadInputsRuleSet-production"
      sampled_requests_enabled   = true
    }
 
    statement {
 
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesKnownBadInputsRuleSet"
        version     = "Version_1.20"
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "Log4JRCE_HEADER"
        }
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "Log4JRCE_QUERYSTRING"
        }
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "Log4JRCE_BODY"
        }
 
        rule_action_override {
          action_to_use {
            count {}
 
          }
          name = "Log4JRCE_URIPATH"
        }
 
      }
    }
  }    
 
 
  # Staging AWSManagedRulesLinuxRuleSet
 
  rule {
    name     = "AWS-AWSManagedRulesLinuxRuleSet-staging"
    priority = 160
 
    override_action {
      count {}
    }
 
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesLinuxRuleSet-staging"
      sampled_requests_enabled   = true
    }
 
    statement {
 
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesLinuxRuleSet"
        version     = "Version_2.2"
 
      }
    }
  }
 
# Production AWSManagedRulesLinuxRuleSet
 
  rule {
    name     = "AWS-AWSManagedRulesLinuxRuleSet-production"
    priority = 170
 
    override_action {
      none {}
    }
 
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesLinuxRuleSet-production"
      sampled_requests_enabled   = true
    }
 
    statement {
 
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesLinuxRuleSet"
        version     = "Version_2.1"
 
      }
    }
  }
 
 
 
 
  # Staging AWSManagedRulesWindowsRuleSet
 
  rule {
    name     = "AWS-AWSManagedRulesWindowsRuleSet-staging"
    priority = 180
 
    override_action {
      count {}
    }
 
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesWindowsRuleSet-staging"
      sampled_requests_enabled   = true
    }
 
    statement {
 
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesWindowsRuleSet"
        version     = "Version_2.0"
 
      }
    }
  }
 
 
   # Production AWSManagedRulesWindowsRuleSet
 
  rule {
    name     = "AWS-AWSManagedRulesWindowsRuleSet-production"
    priority = 190
 
    override_action {
      none {}
    }
 
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesWindowsRuleSet-production"
      sampled_requests_enabled   = true
    }
 
    statement {
 
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesWindowsRuleSet"
        version     = "Version_1.1"
 
      }
    }
  }
 
 
  # Staging AWSManagedRulesPHPRuleSet
 
  rule {
    name     = "AWS-AWSManagedRulesPHPRuleSet-staging"
    priority = 200
 
    override_action {
      count {}
    }
 
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesPHPRuleSet-staging"
      sampled_requests_enabled   = true
    }
 
    statement {
 
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesPHPRuleSet"
        version     = "Version_2.0"
 
      }
    }
  }
 
   # Production AWSManagedRulesPHPRuleSet
 
  rule {
    name     = "AWS-AWSManagedRulesPHPRuleSet-production"
    priority = 210
 
    override_action {
      none {}
    }
 
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesPHPRuleSet-production"
      sampled_requests_enabled   = true
    }
 
    statement {
 
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesPHPRuleSet"
        version     = "Version_1.1"
 
      }
    }
  }
 
 
  # Staging AWSManagedRulesAdminProtectionRuleSet
 
  rule {
    name     = "AWS-AWSManagedRulesAdminProtectionRuleSet-staging"
    priority = 220
 
    override_action {
      count {}
    }
 
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesAdminProtectionRuleSet-staging"
      sampled_requests_enabled   = true
    }
 
    statement {
 
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesAdminProtectionRuleSet"
        version     = "Version_1.1"
 
      }
    }
  }
 
      # Production AWSManagedRulesAdminProtectionRuleSet
 
  rule {
    name     = "AWS-AWSManagedRulesAdminProtectionRuleSet-production"
    priority = 230
 
    override_action {
      none {}
    }
 
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesAdminProtectionRuleSet-production"
      sampled_requests_enabled   = true
    }
 
    statement {
 
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesAdminProtectionRuleSet"
        version     = "Version_1.1"
 
      }
    }
  }     
 
 
  # Staging AWSManagedRulesWordPressRuleSet
 
  rule {
    name     = "AWS-AWSManagedRulesWordPressRuleSet-staging"
    priority = 240
 
    override_action {
      count {}
    }
 
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesWordPressRuleSet-staging"
      sampled_requests_enabled   = true
    }
 
    statement {
 
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesWordPressRuleSet"
        version     = "Version_1.1"
 
      }
    }
  }
 
# Production AWSManagedRulesWordPressRuleSet
 
  rule {
    name     = "AWS-AWSManagedRulesWordPressRuleSet-production"
    priority = 250
 
    override_action {
      none {}
    }
 
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesWordPressRuleSet-production"
      sampled_requests_enabled   = true
    }
 
    statement {
 
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesWordPressRuleSet"
        version     = "Version_1.1"
 
      }
    }
  }  
}
