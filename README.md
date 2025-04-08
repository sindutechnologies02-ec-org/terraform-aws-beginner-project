# 🌩️ Terraform AWS Beginner Project

This is a beginner-friendly Terraform project that demonstrates how to automate infrastructure on AWS using Infrastructure as Code (IaC).

---

## 🚀 Project Goal

The goal of this project is to provision AWS infrastructure using Terraform on an Amazon Linux EC2 instance. This is part of my journey transitioning from a **civil engineering background** to a career in **cloud computing and DevOps**.

---

## 📌 What This Project Does

✅ Creates an EC2 instance  
✅ Creates an S3 bucket  
✅ Creates a Security Group  
✅ Uses `terraform` commands to provision and destroy resources  
✅ Shows how to use `.gitignore` to avoid pushing large or sensitive files

---

## 🛠️ Tools & Technologies

- **Terraform**  
- **AWS EC2** (Amazon Linux)  
- **AWS S3**  
- **Git & GitHub**  
- **PuTTY** (for connecting to EC2)  

---

## 🧱 Architecture Diagram

                           +---------------------------+
                           |   Your Local Machine      |
                           | (EC2 Instance via PuTTY)  |
                           +---------------------------+
                                       |
                        SSH + Terraform Commands
                                       |
                           +---------------------------+
                           |   Terraform CLI           |
                           +---------------------------+
                                       |
                        Provisions AWS Resources using
                          `terraform apply` command
                                       |
     +-----------------------------------------------------------+
     |                       AWS Cloud                           |
     |                                                           |
     |   +------------------+     +---------------------------+  |
     |   |  EC2 Instance     |     |    S3 Bucket              |  |
     |   |  (Virtual Server) |     |  (Storage for files)      |  |
     |   +------------------+     +---------------------------+  |
     |                                                           |
     |   +------------------------+                              |
     |   | Security Group         |                              |
     |   | (Firewall Rules)       |                              |
     |   +------------------------+                              |
     +-----------------------------------------------------------+
