# Flask and Express Deployment using Terraform

## Project Overview

This project deploys:
- Flask backend
- Express frontend

on a single EC2 instance using Terraform.

---

## Technologies Used

- AWS EC2
- Terraform
- Python Flask
- Node.js Express

---

## Ports Used

| Application | Port |
|-------------|------|
| Flask       | 5000 |
| Express     | 3000 |

---

## Files

- main.tf
- provider.tf
- variables.tf
- outputs.tf
- userdata.sh

---

## Deployment Steps

### Initialize Terraform

terraform init

### Validate

terraform validate

### Plan

terraform plan

### Apply

terraform apply

---

## Access Applications

Flask:
http://PUBLIC-IP:5000

Express:
http://PUBLIC-IP:3000

---

## Destroy Infrastructure

terraform destroy