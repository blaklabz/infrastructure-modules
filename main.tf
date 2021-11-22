provider "helm" {
  kubernetes {
    config_path = "${var.config_path}"
  }
}

### ELK logging implementation ####

## build namespace and secrets
module "oss-elk-namespaces" {
  source                 = "./oss-elk-namespaces"
  config_path            = "${var.config_path}"
}

module "oss-elk-secrets" {
  depends_on             = [module.oss-elk-namespaces]
  source                 = "./oss-elk-secrets"
  config_path            = "${var.config_path}"
}
