module "Santiago-granada" {
    source = "./modules/compute-instance"

    name = "Santiago-granada"
    metadata_startup_script = local.metadata_startup_script
}