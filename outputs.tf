output "kubeconfig_base64" {
    value = linode_lke_cluster.obsv.kubeconfig
    sensitive = true
}