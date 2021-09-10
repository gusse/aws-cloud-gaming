# aws-cloud-gaming

Forked https://github.com/badjware/aws-cloud-gaming/ and modified for my needs.

* Can utilize Spot instances
* Can resume from AMI
* Will scaled down the number of instance to 0 if idling for a while
* Simple poweron variable to have it turned on/off

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| external | n/a |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| region | The aws region. Choose the one closest to you: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html#concepts-available-regions | `string` | n/a | yes |
| allowed\_availability\_zone\_identifier | The allowed availability zone identify (the letter suffixing the region). Choose ones that allows you to request the desired instance as spot instance in your region. An availability zone will be selected at random and the instance will be booted in it. | `list(string)` | <pre>[<br>  "a",<br>  "b"<br>]</pre> | no |
| custom\_ami | Use the specified AMI instead of the most recent windows AMI in available in the region | `string` | `""` | no |
| install\_auto\_login | Configure auto-login on first boot | `bool` | `true` | no |
| install\_graphic\_card\_driver | Download and install the Nvidia driver on first boot | `bool` | `true` | no |
| install\_parsec | Download and run Parsec-Cloud-Preparation-Tool on first login | `bool` | `true` | no |
| install\_steam | Download and install Valve Steam on first boot | `bool` | `true` | no |
| instance\_type | The aws instance type, Choose one with a CPU/GPU that fits your need: https://aws.amazon.com/ec2/instance-types/#Accelerated_Computing | `string` | `"g4dn.xlarge"` | no |
| power\_on | n/a | `bool` | `true` | no |
| resource\_name | Name with which to prefix resources in AWS | `string` | `"cloud-gaming"` | no |
| root\_block\_device\_size\_gb | The size of the root block device (C:\ drive) attached to the instance | `number` | `120` | no |
| use\_spot | n/a | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| instance\_password | n/a |
