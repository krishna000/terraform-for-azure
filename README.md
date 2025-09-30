# Terraform for Azure
> Infrastructure as Code (IaC) repository using Terraform to automate deployment of Azure resources.

This repository contains reusable **Terraform modules** for deploying Azure resources such as:

- **Resource Group**
- **Storage Account**
- **Key Vault**
- **Azure Kubernetes Service (AKS)**
- **Role-Based Access Control (RBAC)**
- And more…

It is designed to be **modular**, allowing easy reuse and versioning.

---

## 🚀 Features

- Fully modular Terraform architecture.
- Root module manages providers and global variables.
- Each resource type has its own module directory.
- Supports `terraform init`, `terraform validate`, and `terraform plan` in GitHub Actions CI/CD.
- Easy integration with Azure Free Tier or subscription accounts.

---

## 📁 Repository Structure

terraform-for-azure/
├── .github/
│   └── workflows/
│       └── terraform.yml
├── modules/
│   ├── resource-group/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── storage-account/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── aks/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md
