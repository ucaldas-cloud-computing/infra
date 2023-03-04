module "erika-pelaez" {
    source = "./modules/compute-instance"

    name = "erika-pelaez"
    metadata_startup_script = local.metadata_startup_script
}