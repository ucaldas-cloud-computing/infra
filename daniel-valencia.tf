module "daniel-valencia" {
    source = "./modules/compute-instance"

    name = "daniel-valencia"
    metadata_startup_script = local.metadata_startup_script
}