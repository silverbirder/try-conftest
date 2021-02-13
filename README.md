# try-conftest

```
$ touch credential.json # gcp credential file
$ export GOOGLE_APPLICATION_CREDENTIALS=$(pwd)/credential.json
$ terraform init
$ make all
$ make clean
```