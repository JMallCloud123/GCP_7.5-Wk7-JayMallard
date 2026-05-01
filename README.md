# GCP_7.5-Wk7-JayMallard


# GCP Wk7 Terraform Homework

This repo is for my GCP Wk7 Terraform homework. I used Terraform to set up a basic Google Cloud VPC, create a local text file, add outputs, and organize everything into the required repo folders.

## Creating the Git Repository

I started by creating a new repository in GitHub.

I logged into GitHub, clicked the **Repositories** tab, and selected the green **New** button. After entering the repository information, I copied the quick setup command using either SSH or HTTPS.

Then I opened my terminal and went to the folder where I wanted to keep the project.

```bash
git clone <repo-url>
```

After the repo finished cloning, I went into the repo folder:

```bash
cd <repo-folder-name>
```

Then I opened it in VS Code:

```bash
code .
```

## Assignment Overview

This homework has two parts.

Part 1 is the Week 7 Terraform folder with the working class code and screenshots.

Part 2 is the Infra folder with my homework files.

## Folder Structure

```text
.
├── Week 7 Terraform/
│   ├── 0-auth.tf
│   ├── 1-backend.tf
│   ├── 2-vpc.tf
│   ├── 3-subnets.tf
│   ├── 4-router.tf
│   ├── 5-nat.tf
│   ├── 6-firewall.tf
│   ├── 7-compute.tf
│   ├── 8-outputs.tf
│   ├── gitignore.txt
│   └── supera.sh
│
├── Infra/
│   ├── 0-auth.tf
│   ├── 1-vpc.tf
│   ├── 2-locals.tf
│   ├── 3-output.tf
│   ├── .gitignore
│   └── ThaiFood.txt
│
├── Deliverables/
│
└── README.md
```

## Part 1 - Week 7 Terraform Folder

The `Week 7 Terraform` folder has the working class code from the Terraform lesson.

Files included:

- `0-auth.tf`
- `1-backend.tf`
- `2-vpc.tf`
- `3-subnets.tf`
- `4-router.tf`
- `5-nat.tf`
- `6-firewall.tf`
- `7-compute.tf`
- `8-outputs.tf`
- `gitignore.txt`
- `supera.sh`

I also added screenshots showing the deployment steps and results.

## Part 2 - Infra Folder

The `Infra` folder has the files I created for the homework.

Files included:

- `0-auth.tf`
- `1-vpc.tf`
- `2-locals.tf`
- `3-output.tf`
- `.gitignore`
- `ThaiFood.txt`

This section includes the provider configuration, VPC creation file, local file resource, output file, and gitignore file.

I also added screenshots to the `Deliverables` folder showing the deployment steps and results.

## Terraform Setup

I used the Terraform Registry to get the Google provider example and added it to my Terraform configuration.

Example provider block:

```hcl
provider "google" {
  project = "my-project-id"
  region  = "us-central1"
}
```

The project value needs to be the actual GCP project ID.

After the provider was added, I ran:

```bash
terraform init
```

## Creating the VPC

For the VPC, I used the Terraform Registry example for a Google Compute Network and updated the name for my lab.

Commands used:

```bash
terraform validate
terraform plan
terraform apply
```

## Creating the Local File

I used the `local_file` resource to create a text file with my favorite food in it.

Example:

```hcl
resource "local_file" "ThaiFood" {
  filename = "${path.module}/ThaiFood.txt"
  content  = "My favorite food is Basil Fried Rice."
}
```

Commands used:

```bash
terraform validate
terraform plan
terraform apply
```

## Outputs

I added an output file so Terraform would display the VPC name after deployment.

Example:

```hcl
output "vpc_name" {
  description = "vpc"
  value       = google_compute_network.main.name
}
```

## Cleaning Up

To delete the resources created by Terraform, I can run:

```bash
terraform destroy
```

## Resources Used

Terraform Google Provider:

https://registry.terraform.io/providers/hashicorp/google/latest/docs

Terraform Local Provider:

https://registry.terraform.io/providers/hashicorp/local/latest/docs

Local File Resource:

https://oneuptime.com/blog/post/2026-02-23-how-to-create-local-files-with-terraform/view

## Notes

I did not push Terraform-generated files or sensitive files to GitHub. Files like `.terraform/`, state files, provider files, and credential JSON files should stay out of the repo.