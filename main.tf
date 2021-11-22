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
