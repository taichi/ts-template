workflow "Build" {
  on = "push"
  resolves = ["Test"]
}

action "Install" {
  uses = "Borales/actions-yarn@master"
  args = "install"
}

action "Lint" {
  needs = "Install"
  uses = "Borales/actions-yarn@master"
  args = "lint"
}

action "Test" {
  needs = "Install"
  uses = "Borales/actions-yarn@master"
  args = "test"
}
