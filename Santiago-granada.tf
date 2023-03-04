module "Santiago-granada" {
    source = "./modules/compute-instance"

    name = "santiago-granada"
    metadata_startup_script = local.metadata_startup_script
}