# SentinelX-SOAR
created by- Aditya kummar ray 
Enterprise-grade Security Orchestration, Automation & Response platform built with Next.js 16, TypeScript, and Tailwind CSS.

---

## Prerequisites

- [Node.js](https://nodejs.org/) v18 or higher
- npm v9 or higher

Check your versions:
```bash
node -v
npm -v
```

---

## Run Karo (Development)

```bash
# 1. Folder mein jao
cd frontend

# 2. Dependencies install karo (pehli baar sirf)
npm install

# 3. Dev server start karo
npm run dev
```

Browser mein kholo: **http://localhost:3000**

Auto-redirect hoga `/login` page par.

---

## Build Karo (Production)

```bash
npm run build
npm run start
```

---

## Project Structure

```
frontend/
├── app/
│   ├── login/               ← Login, Register, MFA, Forgot Password
│   ├── dashboard/
│   │   ├── layout.tsx       ← Sidebar + Navbar (sab pages ka wrapper)
│   │   ├── page.tsx         ← Main Dashboard
│   │   ├── alerts/          ← Alerts list + Alert detail
│   │   ├── incidents/       ← Incident Management
│   │   ├── threat-intel/    ← Threat Intel + IOC Lookup
│   │   ├── playbooks/       ← Playbook Builder
│   │   ├── attack-map/      ← Global Attack Map
│   │   ├── assets/          ← Asset Inventory
│   │   ├── cases/           ← Case Management
│   │   ├── reports/         ← Reports & Analytics
│   │   ├── ai-assistant/    ← AI Chat Assistant
│   │   ├── users/           ← User Management
│   │   ├── rbac/            ← Role-Based Access Control
│   │   ├── integrations/    ← Splunk, Sentinel, AWS, Slack etc.
│   │   ├── audit-logs/      ← Audit Trail
│   │   ├── settings/        ← Platform Settings
│   │   └── profile/         ← User Profile
│   ├── globals.css
│   └── layout.tsx
├── public/
├── package.json
└── next.config.ts
```

---

## Pages Overview

| URL | Page |
|-----|------|
| `/login` | Login / Register / MFA / Forgot Password |
| `/dashboard` | SOC Overview with live charts |
| `/dashboard/alerts` | All alerts with filters |
| `/dashboard/alerts/[id]` | Alert detail + AI analysis |
| `/dashboard/incidents` | Incident management |
| `/dashboard/threat-intel` | IOC lookup + threat feeds |
| `/dashboard/playbooks` | Playbook builder |
| `/dashboard/attack-map` | Live global attack map |
| `/dashboard/assets` | Asset inventory |
| `/dashboard/cases` | Case management |
| `/dashboard/reports` | Analytics & reports |
| `/dashboard/ai-assistant` | AI security chat |
| `/dashboard/users` | User management |
| `/dashboard/rbac` | Role permissions matrix |
| `/dashboard/integrations` | Tool integrations |
| `/dashboard/audit-logs` | Audit trail |
| `/dashboard/settings` | Platform settings |
| `/dashboard/profile` | User profile |

---

## Tech Stack

- **Next.js 16** — App Router
- **TypeScript** — Type safety
- **Tailwind CSS 4** — Styling
- **Framer Motion** — Animations
- **Recharts** — Charts & graphs
- **Lucide React** — Icons
