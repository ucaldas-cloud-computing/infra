module "carolina-castro" {
    source = "./modules/compute-instance"

    name = "carolina-castro"
    metadata_startup_script = local.metadata_startup_script
}