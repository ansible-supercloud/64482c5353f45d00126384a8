
include "root" {
  path = find_in_parent_folders()
}

terraform {
  extra_arguments "reduced_parallelism" {
    commands  = get_terraform_commands_that_need_parallelism()
    arguments = ["-parallelism=2"]
  }
}


dependency "cluster" {
  config_path = "${get_parent_terragrunt_dir()}/105-azure-ocp-ipi/terraform"
  skip_outputs = false

  mock_outputs_allowed_terraform_commands = ["validate", "init", "plan", "destroy", "output"]
  mock_outputs = {
    azure-ocp-ipi_server_url = ""
    azure-ocp-ipi_server_url = ""
    azure-ocp-ipi_username = ""
    azure-ocp-ipi_password = ""
    azure-ocp-ipi_token = ""
  }
}


inputs = {
    server_url = dependency.cluster.outputs.azure-ocp-ipi_server_url
    cluster_server_url = dependency.cluster.outputs.azure-ocp-ipi_server_url
    cluster_login_user = dependency.cluster.outputs.azure-ocp-ipi_username
    cluster_login_password = dependency.cluster.outputs.azure-ocp-ipi_password
    cluster_login_token = dependency.cluster.outputs.azure-ocp-ipi_token
}
