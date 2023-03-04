module "Alejandro-Quintero" {
    source = "./modules/compute-instance"

    name = "Alejandro-quintero"
    metadata_startup_script = local.metadata_startup_script
}