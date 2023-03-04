module "jhon-gutierrez" {
    source = "./modules/compute-instance"

    name = "jhon-gutierrez"
    metadata_startup_script = local.metadata_startup_script
}