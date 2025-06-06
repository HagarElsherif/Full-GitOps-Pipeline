# --------------------------------------------------------------- #
# --------------------- EKS Module Variables -------------------- #
# --------------------------------------------------------------- #

variable "gp_cluster_subnets_ids" {
  type        = map(string)
  description = "A map of subnet IDs where the EKS cluster control plane and node groups will be deployed"
}

variable "gp_eks_cluster_role_arn" {
  type        = string
  description = "The ARN of the IAM role that provides EKS service permissions for managing the cluster"
}

variable "gp_eks_node_group_role_arn" {
  type        = string
  description = "The ARN of the IAM role assigned to the EKS worker node group, granting it permissions to interact with AWS services"
}

variable "gp_bastion_sg_id" {
  type        = string
  description = "The ID of the bastion security group to allow ssh from it to the node group"
}

variable "gp_bastion_role_arn" {
  type        = string
  description = "The ARN of the IAM role assumed by the Bastion host for accessing the EKS cluster"
}

variable "gp_eks_cluster_sg_id" {
  type        = string
  description = "The ID of the addtional EKS security group to allow traffic from bastion"
}