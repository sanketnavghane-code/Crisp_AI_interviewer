# How to Run the Project in VS Code

This project has been configured with VS Code tasks to make running the full stack application easy.

## 🚀 Quick Start (Recommended)

1.  Press `Ctrl + Shift + P` (or `Cmd + Shift + P` on Mac).
2.  Type `Tasks: Run Task` and select it.
3.  Select **Run Full Stack**.

This will automatically:
*   Start the **Backend** (Spring Boot) using the correct Java 17 version.
*   Start the **Frontend** (React/Vite).

You can verify they are running by opening:
*   Frontend: [http://localhost:5173](http://localhost:5173)
*   Backend API: [http://localhost:8080](http://localhost:8080)

## 🛠 Manual Setup

If you prefer running commands manually in the terminal:

### 1. Backend (Terminal 1)
The backend requires **Java 17**. Since your system default is Java 24, you must configure the path:

```powershell
$env:JAVA_HOME="C:\Program Files\Microsoft\jdk-17.0.18.8-hotspot"
$env:Path="$env:JAVA_HOME\bin;$env:Path"
cd backend
.\mvnw.cmd spring-boot:run
```

### 2. Frontend (Terminal 2)
The frontend uses a helper script to manage Node.js versions:

```powershell
powershell -ExecutionPolicy Bypass -File .\.agent\scripts\run_frontend.ps1
```

## ❓ Troubleshooting

**"Port 8080 was already in use"**
If you see this error, it means the server is already running. You can stop the existing terminals or kill the process.

**"Java version mismatch"**
Ensure you are using the VS Code tasks or the manual commands above which explicitly set `JAVA_HOME` to the installed Java 17.
