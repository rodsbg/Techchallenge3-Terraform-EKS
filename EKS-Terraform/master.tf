resource "aws_eks_cluster" "eks_cluster" {

  name     = var.cluster_name
  role_arn = aws_iam_role.eks_master_role.arn
  #version  = var.kubernetes_version
  
  vpc_config {

      subnet_ids = [
        aws_subnet.subnet_private1.id, 
        aws_subnet.subnet_private2.id
      ]
    }
    tags = {
        "Environment" = "${var.trabalho-fiap-tc3}"
         Name = "${var.trabalho-fiap-tc3}" 
      }
      depends_on = [
        aws_iam_role_policy_attachment.eks_cluster_cluster,
        aws_iam_role_policy_attachment.eks_cluster_service
      ]
}