module "cristian-castro" {
    source = "./modules/compute-instance"

    name = "jimena-cardenas"
    metadata_startup_script = local.metadata_startup_script
}