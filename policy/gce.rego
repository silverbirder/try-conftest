package main.gce

deny[msg] {
  input.resource_changes[_].type == "google_compute_instance"
  exist_gce_nat_ip(input.resource_changes[_].change.after_unknown)

  msg = "Don't use nat_ip"
}

deny[msg] {
  input.resource_changes[_].type == "google_compute_instance"
  exist_gce_nat_ip(input.resource_changes[_].change.after)

  msg = "Dont use nat_ip"
}

exist_gce_nat_ip(after) {
    after.network_interface[_].access_config[_].nat_ip == true
}