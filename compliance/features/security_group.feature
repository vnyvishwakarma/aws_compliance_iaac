Feature: security group compliance

@fail
Scenario: Only selected ports should be publicly open
    Given I have AWS Security Group defined
    When it has ingress
    Then it must have ingress
    Then it must only have tcp protocol and port 22,443 for 0.0.0.0/0