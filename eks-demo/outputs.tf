# outputs
locals {
  kubeconfig = <<KUBECONFIG


apiVersion: v1
clusters:
- cluster:
<<<<<<< HEAD
    server: ${aws_eks_cluster.demo.endpoint}
    certificate-authority-data: ${aws_eks_cluster.demo.certificate_authority[0].data}
=======
    server: ${aws_eks_cluster.demo.endpoint***REMOVED***
    certificate-authority-data: ${aws_eks_cluster.demo.certificate_authority[0].data***REMOVED***
>>>>>>> 191d763... adding_other_demos
  name: kubernetes
contexts:
- context:
    cluster: kubernetes
    user: aws
  name: aws
current-context: aws
kind: Config
<<<<<<< HEAD
preferences: {}
=======
preferences: {***REMOVED***
>>>>>>> 191d763... adding_other_demos
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
        - "${var.cluster-name}"
KUBECONFIG

}

output "kubeconfig" {
  value = local.kubeconfig
}
=======
        - "${var.cluster-name***REMOVED***"
KUBECONFIG

***REMOVED***

output "kubeconfig" {
  value = local.kubeconfig
***REMOVED***
>>>>>>> 191d763... adding_other_demos

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
    - rolearn: ${aws_iam_role.demo-node.arn}
      username: system:node:{{EC2PrivateDNSName}}
=======
    - rolearn: ${aws_iam_role.demo-node.arn***REMOVED***
      username: system:node:{{EC2PrivateDNSName***REMOVED******REMOVED***
>>>>>>> 191d763... adding_other_demos
      groups:
        - system:bootstrappers
        - system:nodes
CONFIGMAPAWSAUTH

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

