# Interview Assistant

A full-stack interview assistant application.

## Prerequisites
- **Java 24** (or compatible JDK)
- **Node.js** (LTS version)
- **MySQL** (optional, H2 is configured as fallback)

## Quick Start

### Backend
1. Go to the `backend` folder.
2. Double-click `run_backend.bat`.
   - The server will start on `http://localhost:8080`.

### Frontend
1. Ensure Node.js is installed.
2. Double-click `run_frontend.bat` in the root folder.
   - The application will open in your browser.

## Manual Setup

### Backend
```bash
cd backend
./mvnw clean package -Dmaven.test.skip=true
java -jar target/interview-assistant-0.0.1-SNAPSHOT.jar
```

### Frontend
```bash
npm install
npm run dev
```

## Troubleshooting
- **Backend Port Conflict**: Ensure port 8080 is free.
- **Node.js Missing**: Install from [nodejs.org](https://nodejs.org/).
