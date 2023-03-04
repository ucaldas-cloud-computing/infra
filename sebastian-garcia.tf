module "sebastian-garcia"{
    source = "./modules/compute-instance"

    name = "sebastian-garcia"
    metadata_startup_script = local.metadata_startup_script
}