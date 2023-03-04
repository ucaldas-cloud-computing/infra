module "Alejandro-Quintero" {
    source = "./modules/compute-instance"

    name = "Alejandro-Quintero"
    metadata_startup_script = local.metadata_startup_script
}