resource "linode_lke_cluster" "obsv" {
  label = var.lke-cluster-label
  k8s_version = var.lke-k8s-version
  region = var.lke-region

  dynamic "pool" {
    for_each = var.lke-pools
    content {
      type = pool.value["type"]
      count = pool.value["count"]
    }
  }
}