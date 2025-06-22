# Node.js App with Nginx Reverse Proxy and Jenkins CI/CD

This project demonstrates a complete DevOps pipeline for a simple Node.js backend application. It includes:

- ✅ Node.js backend app
- ✅ Nginx reverse proxy
- ✅ Docker & Docker Compose setup
- ✅ Jenkins automation with GitHub webhook triggers

---

## 📁 Project Structure

```
node-app/
├── Dockerfile
├── docker-compose.yml
├── server.js
├── package.json
├── nginx/
│   └── default.conf
```

---

## 🚀 Features

- Node.js app on port 3000
- Nginx as reverse proxy on port 80
- Dockerized using Docker & Compose
- Jenkins CI/CD pipeline runs on GitHub push
- Ngrok used to expose Jenkins for webhook testing

---

## 🔧 Tech Stack

- Node.js + Express
- Nginx
- Docker & Docker Compose
- Jenkins
- Git & GitHub
- Ngrok

---

## ▶️ How to Run Locally

```bash
docker-compose up -d --build
```

Visit the app at: `http://localhost:8080`

---

## ⚙️ Jenkins CI/CD Setup

1. Create Jenkins Job (Freestyle or Pipeline)
2. In job:
   - Source: GitHub repo
   - Trigger: GitHub webhook
   - Build Step:
     ```bash
     cd /var/lib/jenkins/workspace/Backend-app
     docker-compose down
     docker-compose up -d --build
     ```

3. GitHub → Settings → Webhooks:
   - Payload URL: `https://<ngrok-url>/github-webhook/`
   - Content type: `application/json`
   - Event: Just push

---

## 🛠️ Troubleshooting

```bash
# Docker permission issues
sudo chown -R jenkins:jenkins /var/lib/jenkins/workspace/Backend-app

# Show container logs
docker-compose logs -f
```

---

## 🧑‍💻 Author

**Sumeet Rawal**  
🔗 GitHub: [@SumeetRawal5588](https://github.com/SumeetRawal5588)
