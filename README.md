# cwm-azure-vm-scale-test

Safe, non-deployed Terraform fixture for testing Cloud World Model PR simulation of an Azure virtual machine scale-out plus load balancer.

This repository exists only as structural Terraform configuration. **No infrastructure is deployed.** No cloud account is connected. No Azure credentials are stored, referenced, or committed.

## What the baseline describes

On `main`, the configuration describes a single-instance Azure layout in `eastus`:

- One resource group
- One virtual network and subnet
- One public IP and one network interface (`count = 1`)
- One Windows virtual machine (`count = 1`) of size `Standard_D2s_v3`

## Safety

- Terraform is never applied from this repository.
- `admin_password` is a required sensitive variable with **no default**, so nothing secret is committed.
- This is not a production architecture and is not intended to be deployed.
