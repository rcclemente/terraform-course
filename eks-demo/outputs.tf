# outputs
locals {
  kubeconfig = <<KUBECONFIG


apiVersion: v1
clusters:
- cluster:
<<<<<<< HEAD
<<<<<<< HEAD
    server: ${aws_eks_cluster.demo.endpoint}
    certificate-authority-data: ${aws_eks_cluster.demo.certificate_authority[0].data}
=======
    server: ${aws_eks_cluster.demo.endpoint***REMOVED***
    certificate-authority-data: ${aws_eks_cluster.demo.certificate_authority[0].data***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
    server: ${aws_eks_cluster.demo.endpoint}
    certificate-authority-data: ${aws_eks_cluster.demo.certificate_authority[0].data}
>>>>>>> 78c7374... update_vars_image
  name: kubernetes
contexts:
- context:
    cluster: kubernetes
    user: aws
  name: aws
current-context: aws
kind: Config
<<<<<<< HEAD
<<<<<<< HEAD
preferences: {}
=======
preferences: {***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
preferences: {}
>>>>>>> 78c7374... update_vars_image
users:
- name: aws
  user:
    exec:
      apiVersion: client.authentication.k8s.io/v1alpha1
      command: heptio-authenticator-aws
      args:
        - "token"
        - "-i"
<<<<<<< HEAD
<<<<<<< HEAD
        - "${var.cluster-name}"
KUBECONFIG

}

output "kubeconfig" {
  value = local.kubeconfig
}
=======
        - "${var.cluster-name***REMOVED***"
=======
        - "${var.cluster-name}"
>>>>>>> 78c7374... update_vars_image
KUBECONFIG

}

output "kubeconfig" {
  value = local.kubeconfig
<<<<<<< HEAD
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
}
>>>>>>> 78c7374... update_vars_image

# Join configuration

locals {
  config-map-aws-auth = <<CONFIGMAPAWSAUTH


apiVersion: v1
kind: ConfigMap
metadata:
  name: aws-auth
  namespace: kube-system
data:
  mapRoles: |
<<<<<<< HEAD
<<<<<<< HEAD
    - rolearn: ${aws_iam_role.demo-node.arn}
      username: system:node:{{EC2PrivateDNSName}}
=======
    - rolearn: ${aws_iam_role.demo-node.arn***REMOVED***
      username: system:node:{{EC2PrivateDNSName***REMOVED******REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
    - rolearn: ${aws_iam_role.demo-node.arn}
      username: system:node:{{EC2PrivateDNSName}}
>>>>>>> 78c7374... update_vars_image
      groups:
        - system:bootstrappers
        - system:nodes
CONFIGMAPAWSAUTH

<<<<<<< HEAD
<<<<<<< HEAD
}

output "config-map-aws-auth" {
value = local.config-map-aws-auth
}
=======
***REMOVED***

output "config-map-aws-auth" {
value = local.config-map-aws-auth
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
}

output "config-map-aws-auth" {
value = local.config-map-aws-auth
}
>>>>>>> 78c7374... update_vars_image

