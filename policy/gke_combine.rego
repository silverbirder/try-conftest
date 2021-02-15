package main.gke

deny[msg] {
    not instrumenta_project_exists

    msg := "File path index to key value does not exist"
}

instrumenta_project_exists {
    input.configuration.provider_config.google.expressions.project.constant_value == "instrumenta"
}