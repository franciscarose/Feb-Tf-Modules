variable "function_name" {
  description = "The name of the Lambda function. Must be unique within the AWS region."
  type        = string
}

variable "handler" {
  description = "The function entrypoint in your code that Lambda calls to begin execution."
  type        = string
}

variable "runtime" {
  description = "The runtime environment for the Lambda function (e.g., python3.8, nodejs14.x)."
  type        = string
}

variable "role_arn" {
  description = "The ARN of the IAM role that the Lambda function assumes during execution."
  type        = string
}

variable "filename" {
  description = "The path to the deployment package (ZIP file) containing the function code."
  type        = string
}

variable "memory_size" {
  description = "The amount of memory (in MB) allocated to the Lambda function."
  type        = number
  default     = 128
}

variable "timeout" {
  description = "The maximum execution time (in seconds) for the Lambda function."
  type        = number
  default     = 10
}

variable "environment" {
  description = "A map of environment variables to pass to the Lambda function."
  type        = map(string)
  default     = {}
}
variable "region" {
  default = "us-east-1"
}