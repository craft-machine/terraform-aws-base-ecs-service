variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "container_port" {
  description = "The port on the container to associate with the load balancer."
  type        = number
}

variable "container_definitions" {
  description = "The ECS task definition data source."
  type        = string
}

variable "cluster_id" {
  description = "ARN of an ECS cluster."
  type        = string
}

variable "desired_count" {
  description = "The number of instances of the task definition to place and keep running."
  type        = number
}

variable "vpc_id" {
  description = "VPC that will be used for all resources."
  type        = string
}

variable "health_check" {
  description = "The destination for the health check request. Default /."
  type        = string
  default     = "/"
}

variable "health_check_interval" {
  description = "The approximate amount of time, in seconds, between health checks of an individual target"
  type        = number
  default     = 30
}

variable "health_check_timeout" {
  description = "The amount of time, in seconds, during which no response means a failed health check."
  type        = number
  default     = 5
}

variable "health_check_healthy_threshold" {
  description = "The number of consecutive health checks successes required before considering an unhealthy target healthy."
  type        = number
  default     = 3
}

variable "health_check_unhealthy_threshold" {
  description = "The number of consecutive health check failures required before considering the target unhealthy."
  type        = number
  default     = 3
}

variable "ecs_service_role_arn" {
  description = "ARN of default Amazon ECS service role."
  type        = string
}

variable "deployment_minimum_healthy_percent" {
  description = "The lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain running and healthy in a service during a deployment."
  type        = number
  default     = 50
}

variable "deployment_maximum_percent" {
  description = "The upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a service during a deployment."
  type        = number
  default     = 200
}

variable "volumes" {
  type        = any
  description = "A list of volumes that containers in service task will have access to. List item structure should mirror volume argument of aws_ecs_task_definition resource: https://registry.terraform.io/providers/hashicorp/aws/3.27.0/docs/resources/ecs_task_definition#volume-block-arguments."
  default     = []
}

variable "capacity_provider" {
  description = "Name of the capacity provider"
  type        = string
  default     = ""
}

variable "wait_for_steady_state" {
  description = "If true, Terraform will wait for the service to reach a steady state"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}