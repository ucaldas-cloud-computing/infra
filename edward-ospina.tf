module "edward-ospina" {
    source = "./modules/compute-instance"

    name = "edward-ospina"
    metadata_startup_script = local.metadata_startup_script
}