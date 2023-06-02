variable "linode-api-token" {
  type = string
  description = "The Linode API Token used by the linode provider"
}

variable "lke-cluster-label" {
  type = string
  description = "The unique cluster label"
}

variable "lke-k8s-version" {
  type = number
  description = "LKE Kubernetes Version"
}

variable "lke-region" {
  type = string
  description = "Linode region to deploy the cluster into"
}

variable "lke-pools" {
  description = "The Node Pool specifications for the Kubernetes cluster. (required)"
  type = list(object({
    type = string
    count = number
  }))
  default = [ {
    type = "g6-standard-2"
    count = 3
  } ]
}