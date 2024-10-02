# Output from VPC module
output "vpc_id" {
  value = module.vpc.vpc_id
}

# Output from Load Balancer module
output "public_alb_dns" {
  value = module.load_balancers.public_lb_dns
  description = "DNS name of the public App LB"
}

output "internal_elb_dns" {
  value = module.load_balancers.internal_lb_dns
  description = "DNS name of the internal ELB"
}

# Output from Auto Scaling Group (EC2 instances)
output "asg_name" {
  value = module.autoscaling.asg_name
  description = "Name of the ASG"
}

# Output from ECS Fargate (API Cluster)
output "ecs_service_name" {
  value = module.ecs_fargate.ecs_service_name
  description = "name of the ECS service"
}

# Output from RDS (Database)
output "rds_instance_id" {
  value = module.rds.rds_instance_id
  description = "ID of the RDS instance"
}

# Output from Security Groups
output "web_sg_id" {
  value = module.security_groups.web_sg_id
  description = "SG ID for web client instances"
}

output "api_sg_id" {
  value = module.security_groups.api_sg_id
  description = "SG ID for API instances"
}

output "rds_sg_id" {
  value = module.security_groups.rds_sg_id
  description = "SG ID for RDS instance"
}