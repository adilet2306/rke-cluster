# rke-cluster


### Explanation of the Key Sections:

- **Installation Instructions**: This part of the README covers installing the required tools (`kubectl`, `RKE`, `Terraform`, and `Helm`).
  
- **Provisioning Instances**: It covers the first steps of provisioning AWS instances using Terraform and getting their IP addresses.

- **RKE Configuration**: Details how to update the IP addresses of the EC2 instances in the RKE `main.tf` file.

- **Deploying the Cluster**: Once the configuration is updated, `terraform apply` is run to deploy the RKE cluster.

- **Kubeconfig Generation**: This is the step where the configuration file for kubectl is generated so that you can interact with the cluster.

- **Deploying the Application**: The final step where the `app` folder is initialized and applied using Terraform to deploy your application.

- **Verification**: Simple checks to ensure the cluster and application are up and running using `kubectl`.

### Additional Notes:
- **Replacing `<master-instance-ip>` and `<worker-1-ip>`, `<worker-2-ip>`**: Make sure to replace these placeholders with the actual IP addresses of your instances after running `terraform apply` in the `instance` folder.
  
- **Cleaning up resources**: After you're done, remember to clean up resources using `terraform destroy` to avoid any unnecessary charges.
