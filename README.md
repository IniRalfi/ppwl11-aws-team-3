# 🚀 PPWL 11 - Monorepo AWS Teams 3

[![PPWL 2026 Asdos - 11](https://img.shields.io/badge/PPWL_2026_Asdos-11-blue?style=for-the-badge&logo=github)](#)
[![Date](https://img.shields.io/badge/Date-16%20April%202026-blue?style=flat-square&logo=calendar-check)](#)

---

## 👥 Team Members

| Nama                    | NIM         | Role                    |
| ----------------------- | ----------- | ----------------------- |
| Rafli Pratama           | H1101241008 | Admin                   |
| Salsabila Nur Anisa     | H1101241026 | Budget & Cost           |
| Olivia Naura Fakhradika | H1101241019 | RDS Database            |
| Tan Atira Yasmin        | H1101241032 | Lambda Backend          |
| Adella Rheina Sweeta    | H1101241036 | S3 + CloudFront         |
| Rifa Dwinanda Bagaskara | H1101241023 | Testing & Documentation |

---

## 🧱 AWS Architecture Diagram

🔗 **Canva Board:**  
👉 https://canva.link/e14h0vbxx11wrkf

Diagram ini menggambarkan arsitektur aplikasi berbasis AWS yang terdiri dari frontend, backend, database, integrasi layanan eksternal, serta monitoring biaya.

---

## ⚙️ Arsitektur Sistem

### 🌐 Frontend Flow

Internet → CloudFront (HTTPS) → S3 (React SPA)

### 🔗 Backend Flow

Internet → Lambda Function URL → Lambda Backend (Elysia)

### 🗄️ Database & Storage

Lambda → RDS / Aurora (VPC internal, port 5432)
Lambda → Turso / LibSQL (via HTTPS)

### 🔐 Secret & Authentication

Lambda → SSM Parameter Store (secret injection)
Lambda → Google OAuth (redirect flow)

### 💸 Monitoring & Budget

AWS Budgets → SNS → Email Alerts

---

## 📸 Required Screenshots

Diagram harus menyertakan screenshot berikut:

- S3 (Frontend Bucket)
- CloudFront Distribution
- Lambda Backend
- RDS Database
- Parameter Store
- AWS Budget
- Cost Report

📌 Tempelkan screenshot pada node masing-masing di dalam diagram Canva.

---

## 🐞 Bug Report

Laporkan bug/error dengan format berikut:

- **Deskripsi Bug**
- **Lokasi**
- **Langkah sebelum error**
- **Pesan Error**
- **Screenshot (jika ada)**
- **Solusi yang dicoba**

---

## 🧠 Notes

- Diagram dibuat menggunakan **Canva Whiteboard**
- Menggunakan arsitektur serverless berbasis AWS
- Struktur terdiri dari:
  - Frontend (CloudFront + S3)
  - Backend (Lambda)
  - Database (RDS)
  - Monitoring (Budget + SNS)

---
