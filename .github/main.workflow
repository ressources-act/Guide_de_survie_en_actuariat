workflow "auto-label" {
  on = "pull_request"
  resolves = ["Auto label"]
}

action "Auto label" {
  uses = "banyan/auto-label@master"
  secrets = ["GITHUB_TOKEN"]
}
