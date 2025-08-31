# Lift-and-Shift Factory — Terraform + Ansible for Windows Services (AWS)

Redeploy on-prem **Windows services** to **AWS** with:
- **Terraform** → VPC/Networking, IAM/SSM, EC2 (Windows), optional ALB
- **Ansible** → idempotent install/update of your Windows service via WinRM/SSM

> Outcome: repeatable “factory” to lift-and-shift Windows workloads with health checks, rollback, and clear runbooks.

---

## What you get
- Windows Server 2019/2022 EC2 with **SSM** enabled (no RDP keys required)
- WinRM bootstrap (for Ansible), install directory, and health endpoint scaffold
- Ansible playbook to pull an artifact from **S3**, configure env vars, install/start the service
- Optional **ALB** + Target Group + `/healthz` check
- Clean **destroy** flow

---

## 0) Prerequisites
- Terraform ≥ **1.5**, Ansible ≥ **2.15**, `aws` CLI
- AWS account able to create **VPC/EC2/IAM/ALB/SSM/S3**
- App artifact (MSI/ZIP/EXE) uploaded to **S3**
- (Recommended) **SSM Parameter Store / Secrets Manager** for secrets
- A Windows AMI ID in your region (e.g., Windows Server 2022)

---

## 1) Repository layout
