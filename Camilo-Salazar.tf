module "camilo-salazar" {
    source = "./modules/compute-instance"

    name = "camilo-salazar"
    metadata_startup_script = local.metadata_startup_script
}