resource "rafay_workload_cd_operator" "operator-demo" {
  metadata {
    name    = "workload-cd-demo-1"
    project = "pravin-demo"
  }
  spec {
    repo_local_path = "/tmp/application-repo"
    repo_url        = "https://github.com/pravin-rafay/workload-cd-examples.git"
    repo_branch     = "main"
#    credentials {
#      username = "stephan-rafay"
#      token = "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"
#    }

    path_match_pattern = "/:project/:namespace/:workload"
    base_path = "common"
    //cluster_names = "bb6"
    placement_labels = {
      "team" = "team-dev"
    }

    include_base_value = true
    delete_action = "true"

  }
  always_run = "${timestamp()}"
}
