<h1 align="center">📚 Study Hub — Daily Study Dashboard</h1>

<p align="center">
  A modern, responsive study dashboard built to help students organize their day, manage study tasks, track focus sessions, and stay productive.
</p>

## ✨ Overview

**Study Hub** is an all-in-one study dashboard designed around daily productivity.

It combines a study schedule, task management, Pomodoro timer, focus mode, grade calculator, calculator, prayer times, notifications, and daily motivation into one clean interface.

The project features a modern **glassmorphism UI** with smooth animations, dark/light themes, and a responsive layout for desktop and mobile devices.


## 🚀 Features


### 📊 Dashboard

The main dashboard gives you a quick overview of your study day, including:

* Today's date
* Completed and total tasks
* Number of scheduled lessons
* Total focus hours
* Completed focus sessions
* Next upcoming lesson
* Task completion progress
* Focus score

---

### 📅 Smart Schedule

Create and manage your daily study schedule.

Each lesson can include:

* Lesson or subject name
* Time
* Type:

  * 📖 Study
  * 🎓 Lesson
  * 📝 Exam
  * 🔄 Review
* Reminder before the lesson

You can also:

* Add lessons
* Edit lessons
* Delete lessons
* Automatically sort lessons by time

---

### ✅ Daily Tasks

Manage your daily to-do list directly from the dashboard.

Features include:

* Add new tasks
* Mark tasks as completed
* Delete tasks
* Automatic completion tracking
* Task progress percentage

Completed tasks are visually marked to make progress easier to follow.

---

### ⏱️ Interactive Pomodoro Timer

A built-in Pomodoro timer helps you organize focused study sessions.

### Focus Session

**25 minutes**

### Break Session

**5 minutes**

The timer includes:

* Start / pause
* Reset
* Skip session
* Circular progress indicator
* Session counter
* Focus time tracking
* Selected study subject
* Automatic transition between focus and break sessions

---

### 🧠 Deep Work Mode

A distraction-free **Deep Work Mode** provides a focused environment for studying.

It includes:

* Large Pomodoro timer
* Current tasks
* Start / pause controls
* Reset control
* Dedicated full-screen interface

---

### 🧮 Calculator

A built-in modern calculator for quick calculations while studying.

Supports:

* Addition
* Subtraction
* Multiplication
* Division
* Parentheses
* Decimal numbers
* Clear
* Result calculation

---

### 📈 Grade Predictor

Calculate your percentage and grade based on:

* Your score
* Total possible score

Simply enter your results and calculate your percentage instantly.

---

### 🕌 Prayer Times

The dashboard includes a prayer-times section with city selection.

Available cities:

* Cairo
* Giza
* Alexandria

The interface also includes an option to enable notifications.

---

### 💡 Daily Inspiration

A daily motivation section provides study-focused motivational quotes.

You can:

* Generate another quote
* Copy the quote
* Share the quote

### 🔔 Notifications

The dashboard includes notification support for study reminders and scheduled activities.

---

## 🎨 UI & Design

Study Hub uses a modern glassmorphism-inspired design.

### Design Features

* Glass-style cards
* Blurred backgrounds
* Gradient accents
* Smooth transitions
* Hover animations
* Floating elements
* Responsive layouts
* Dark and light themes
* Mobile navigation

The main visual palette is built around:

* Navy
* Violet
* Cyan
* Emerald

The project also uses animated background effects and interactive UI elements to create a modern dashboard experience.

## 🛠️ Tech Stack

* **HTML5**
* **CSS3**
* **JavaScript**
* **Tailwind CSS**
* **Lucide Icons**
* **Supabase Auth, Postgres, Realtime, and Row Level Security**
* **Local Storage API** (preferences and one-time data migration)
* **Vercel**

---

## 📂 Project Structure

```text
Study-Hub/
│
├── index.html
├── script.js
├── style.css
├── supabase-schema.sql
└── README.md
```

## ☁️ Cloud Sync Setup

Tasks, lessons, and focus statistics sync through Supabase for the signed-in user. Apply `supabase-schema.sql` in the Supabase SQL Editor to create the user-owned dashboard table, enable Row Level Security, and add the Realtime publication.

The Supabase project URL and publishable key are configured in `script.js`. The publishable key is intended for browser use; never add a service-role key to this project.

In Supabase Authentication settings, enable email/password sign-in. Set the Site URL to the deployed website and add the deployed URL plus your local development URL (for example, `http://127.0.0.1:5500/**`) under the allowed redirect URLs. Email confirmation may be required before the first sign-in.

On the first sign-in, existing local tasks, lessons, and focus statistics are imported if that browser has not already completed the one-time migration. Other devices load the account's cloud data after sign-in.

## 🌐 Live Website

[![Live Website](https://img.shields.io/badge/Live%20Website-Visit%20Website-8B5CF6?style=for-the-badge&labelColor=111111)](https://saudstudy.vercel.app/)

## </> Developer

**Developed by [Amrix](https://github.com/amrix-eg) & [Mohamed](https://github.com/PrimeDevX)**

---

© 2026 Study Dashboard
