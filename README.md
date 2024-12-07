# rke-cluster

```bash

cd create-instance
terraform init
terraform plan
terraform apply -auto-approve

cd ../rke
terraform init
terraform plan
terraform apply -auto-approve
terraform output -raw kube_config >> ~/.kube/config
```