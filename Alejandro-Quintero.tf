module "alejandro-quintero" {
    source = "./modules/compute-instance"

    name = "alejandro-quintero"
    metadata_startup_script = local.metadata_startup_script
}