module "juan-esteban-arias" {
    source = "./modules/compute-instance"

    name = "juan-esteban-arias"
    metadata_startup_script = local.metadata_startup_script
}
