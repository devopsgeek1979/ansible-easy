
# 🚀 Ultra Enterprise DevOps Platform: AWX + Kubernetes + vSphere

## 🌙 The Incident That Changed Everything

2:07 AM. PagerDuty 🔴  
Production cluster unstable. AWX jobs failing. vCenter latency spikes.

What followed:

- ❌ Manual SSH attempts
- ❌ Drift across environments
- ❌ No observability correlation

This repo is the **post-mortem turned platform**.

---

## 🧠 What This Platform Solves

✔ Deterministic infrastructure (Terraform)  
✔ Declarative automation (AWX Operator)  
✔ Observability-first design (Prometheus + Grafana + Loki)  
✔ Failure-aware engineering  

---

## 🏗️ Full Architecture

vSphere → Terraform → K8s Cluster → AWX Operator → Vault → Observability Stack

---

## 📸 Screenshots

See `/screenshots/`:

- awx-dashboard.png
- grafana-dashboard.png
- k8s-pods.png

---

## ⚙️ Deployment Flow

1. Terraform provisions infra
2. K8s cluster bootstrapped
3. AWX deployed via Operator
4. Vault injects secrets
5. Monitoring stack activated

---

## 💥 Failure Simulations Included

### 1. Node Failure

Simulate:

```bash
kubectl drain <node>
```

Recovery:

- Pods rescheduled
- AWX remains available

---

### 2. AWX Pod Crash

```bash
kubectl delete pod -n awx -l app=awx
```

Outcome:

- Operator auto-recovers

---

### 3. vCenter Latency

- Simulated API delay
- AWX job timeout handling

---

## 📊 Observability

- Prometheus scraping AWX + K8s
- Grafana dashboards (included JSON)
- Loki logs aggregation

---

## 🔐 Vault Integration

- Dynamic secrets
- Token-based auth
- No plaintext credentials

---

## 🚀 Why This Repo is Different

This is not a demo.  
This is **how real platform teams build resilience**.

---

👨‍💻 Author: Shashi Pal
