# try-conftest

```
$ export GOOGLE_APPLICATION_CREDENTIALS=$(pwd)/credential.json
$ terraform init
$ terraform plan --out tfplan.binary
$ terraform show -json tfplan.binary > tfplan.json
$ opa eval --format pretty --data terraform.rego --input tfplan.json "data.terraform.analysis.authz"
```