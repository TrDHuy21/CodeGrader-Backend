# CodeGrader - Automated Code Assessment Platform
> An intelligent microservices-based platform for automated code assessment and educational progress tracking, powered by AI-driven grading algorithms.

##  Project Overview
CodeGrader is a comprehensive educational platform designed to streamline the process of coding assessment in academic environments. The system leverages modern microservices architecture to provide scalable, reliable, and intelligent code evaluation capabilities.

### Key Features
- **AI-Powered Grading**: Advanced machine learning algorithms for accurate code assessment
- **Problem Management**: Comprehensive database of coding challenges with varying difficulty levels
- **User Management**: Role-based authentication system for students and instructors
- **Progress Tracking**: Detailed analytics and performance monitoring
- **Interactive Comments**: Collaborative feedback system for enhanced learning
- **Smart Bookmarking**: Personalized problem collection and organization
- **High Performance**: Optimized microservices architecture with API gateway

### Microservices Components

| Service | Repository | Description |
|---------|------------|-------------|
| **API Gateway** | [CodeGrader-ApiGateway](https://github.com/TrDHuy21/CodeGrader-ApiGateway) | Request routing, authentication, rate limiting |
| **User Service** | [CodeGrader-UserService](https://github.com/TrDHuy21/CodeGrader-UserService) | User management, authentication, authorization |
| **Problem Service** | [CodeGrader-ProblemService](https://github.com/TrDHuy21/CodeGrader-ProblemService) | Problem CRUD, test case management |
| **AI Grader** | [CodeGrader-AIGrader](https://github.com/TrDHuy21/CodeGrader-AIGrader) | Machine learning-based code assessment |
| **Progress Service** | [CodeGrader-ProgressService](https://github.com/TrDHuy21/CodeGrader-ProgressService) | Learning analytics, performance tracking |
| **Bookmark Service** | [CodeGrader-ProblemBookmark](https://github.com/TrDHuy21/CodeGrader-ProblemBookmark) | Personal problem collections |
| **Comment Service** | [CodeGrader-CommentService](https://github.com/TrDHuy21/CodeGrader-CommentService) | Feedback and discussion system |

## 🛠️ Technology Stack

### Backend Technologies
- **Runtime**:  C#
- **Framework**: ASP.NET core 8
- **Database**: MS SQL
- **Authentication**: JWT,
- **API Documentation**: Swagger/OpenAPI

### Infrastructure & DevOps
- **Containerization**: Docker & Docker Compose

# CodeGrader Setup Guide

> Complete step-by-step guide to run CodeGrader locally on your machine

## 📋 Requirements

Before starting, make sure you have:
- ✅ **Docker Desktop** installed and running
- ✅ **Git** installed
- ✅ **Bash terminal** (Git Bash for Windows users)
- ✅ Internet connection for downloading dependencies

## 🚀 Quick Setup (5 minutes)

### Step 1: Clone the Project

```bash
git clone https://github.com/TrDHuy21/CodeGrader-Backend.git
cd CodeGrader-Backend
```

### Step 2: Get Required API Keys

You need to get these **FREE** API keys before running the project:

#### 🔑 Gmail App Password (for sending emails)
1. Go to [Google Account Settings](https://myaccount.google.com/)
2. Enable **2-Factor Authentication** if not already enabled
3. Go to **Security** → **2-Step Verification** → **App Passwords**
4. Generate an app password for "Mail"
5. Copy the 16-character password

#### 🔑 Cloudinary Credentials (for file uploads)
1. Sign up at [Cloudinary](https://cloudinary.com/users/register/free)
2. Go to **Dashboard** after signup
3. Copy: **Cloud Name**, **API Key**, **API Secret**

#### 🔑 Gemini API Key (for AI grading)
1. Go to [Google AI Studio](https://aistudio.google.com/app/apikey)
2. Click **Create API Key**
3. Copy the generated key

### Step 3: Configure Environment Variables

Open the `.env` file in your project folder and update these values:

```bash
# Email Configuration
EmailSettings__SenderEmail=YOUR_EMAIL@gmail.com
EmailSettings__Password=YOUR_16_CHARACTER_APP_PASSWORD

# Cloudinary Configuration  
Cloudinary__CloudName=YOUR_CLOUD_NAME
Cloudinary__ApiKey=YOUR_API_KEY
Cloudinary__ApiSecret=YOUR_API_SECRET

# AI Grader Configuration
Gemini__ApiKey=YOUR_GEMINI_API_KEY
```

### Step 4: Run the Application

```bash
# Make sure Docker Desktop is running first!
docker --version

# Run the startup script
bash run.sh
```

**Wait for all services to start** (this may take 2-3 minutes on first run)

### Step 5: Verify Installation

Once all services are running, open these URLs in your browser:

- 🌐 **API Documentation**: http://localhost:5000/swagger

If you see the Swagger documentation, **congratulations! 🎉** Your setup is complete.

- 📚 **Check logs**: `docker-compose logs service-name`
- 🐛 **Report issues**: Create an issue on GitHub
- 💬 **Contact**: [trdhuy21@example.com]

---

**Happy Coding! 🚀**
