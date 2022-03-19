# terraform-aws-base-ecs-service

## TODO

- [PLT-495](https://craftmachine.atlassian.net/browse/PLT-495)
- [PLT-496](https://craftmachine.atlassian.net/browse/PLT-496)

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
| capacity\_provider | Name of the capacity provider | `string` | `""` | no |
| cluster\_id | ARN of an ECS cluster. | `string` | n/a | yes |
| container\_definitions | The ECS task definition data source. | `string` | n/a | yes |
| container\_port | The port on the container to associate with the load balancer. | `number` | n/a | yes |
| deployment\_maximum\_percent | The upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a service during a deployment. | `number` | `200` | no |
| deployment\_minimum\_healthy\_percent | The lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain running and healthy in a service during a deployment. | `number` | `50` | no |
| desired\_count | The number of instances of the task definition to place and keep running. | `number` | n/a | yes |
| ecs\_service\_role\_arn | ARN of default Amazon ECS service role. | `string` | n/a | yes |
| health\_check | The destination for the health check request. Default /. | `string` | `"/"` | no |
| health\_check\_healthy\_threshold | The number of consecutive health checks successes required before considering an unhealthy target healthy. | `number` | `3` | no |
| health\_check\_interval | The approximate amount of time, in seconds, between health checks of an individual target | `number` | `30` | no |
| health\_check\_timeout | The amount of time, in seconds, during which no response means a failed health check. | `number` | `5` | no |
| health\_check\_unhealthy\_threshold | The number of consecutive health check failures required before considering the target unhealthy. | `number` | `3` | no |
| name | Name to be used on all the resources as identifier | `string` | `""` | no |
| tags | A map of tags to add to all resources | `map(string)` | `{}` | no |
| volumes | A list of volumes that containers in service task will have access to. List item structure should mirror volume argument of aws\_ecs\_task\_definition resource: https://registry.terraform.io/providers/hashicorp/aws/3.27.0/docs/resources/ecs_task_definition#volume-block-arguments. | `any` | `[]` | no |
| vpc\_id | VPC that will be used for all resources. | `string` | n/a | yes |
| wait\_for\_steady\_state | If true, Terraform will wait for the service to reach a steady state | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| ecs\_task\_execution\_role\_name | n/a |
| ecs\_task\_role\_name | n/a |
| lb\_target\_group\_arn | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
