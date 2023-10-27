resource "aws_eks_node_group" "eks_node_group" {
    
  cluster_name    = var.cluster_name
  node_group_name = format("%s-node-group", var.cluster_name)
  node_role_arn   = aws_iam_role.eks_node_role.arn

  subnet_ids = [
    aws_subnet.subnet_private1.id, 
    aws_subnet.subnet_private2.id
  ]
  instance_types = ["t3.micro"]
  capacity_type  = "SPOT"

  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 2
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.eks_AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.eks_AmazonEC2ContainerRegistryReadOnly,
    aws_eks_cluster.eks_cluster
  ]
  tags = {
    "Environment" = "${var.trabalho-fiap-tc3}"
     Name = "${var.trabalho-fiap-tc3}" 
  }
}