provider "google" {
  project = "intense-reason-458522-h4"
  region  = var.region_name
}

module "yugabyte-db-cluster" {
  source = "./yugabyte"

  # The name of the cluster to be created.
  cluster_name = "ydb-test-cluster"

  # key pair.
  ssh_private_key = var.ssh_private_key
  ssh_public_key  = var.ssh_public_key
  ssh_user        = var.ssh_user
  # The region name where the nodes should be spawned.
  region_name = var.region_name

  # Replication factor.
  replication_factor = "3"

  # The number of nodes in the cluster, this cannot be lower than the replication factor.
  node_count = "3"
}
