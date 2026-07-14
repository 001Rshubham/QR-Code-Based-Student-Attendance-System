# 🎓 QR Code Based Student Attendance System

![Python](https://img.shields.io/badge/Python-3.10+-blue?logo=python)
![Flask](https://img.shields.io/badge/Flask-Web%20Framework-black?logo=flask)
![OpenCV](https://img.shields.io/badge/OpenCV-Computer%20Vision-green?logo=opencv)
![License](https://img.shields.io/badge/License-MIT-yellow)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

An automated **Student Attendance Management System** built using **Python, OpenCV, Flask, and QR Code Technology**. The system generates unique QR codes for students from a class-wise or subject-wise student list, scans them through a webcam, and records attendance automatically with the current date and time.

---

# 📌 Features

- ✅ Generate QR codes from class-wise or subject-wise student lists
- ✅ Real-time QR code scanning using a webcam
- ✅ Automatic attendance recording with date and time
- ✅ Prevent duplicate attendance during a scanning session
- ✅ Store attendance records in CSV format
- ✅ View attendance through a Flask web dashboard
- ✅ Download attendance reports
- ✅ Clear attendance records from the dashboard
- ✅ Simple and user-friendly interface

---

# 🛠 Tech Stack

| Technology | Purpose |
|------------|---------|
| Python | Backend Programming |
| Flask | Web Application |
| OpenCV | QR Code Detection |
| QRCode | QR Code Generation |
| HTML | Dashboard |
| CSS | Styling |
| CSV | Attendance Storage |

---

# 📂 Project Structure

```text
QR-Code-Based-Student-Attendance-System/
│
├── app.py
├── qr_generator.py
├── scan_attendance.py
├── requirements.txt
├── README.md
├── LICENSE
│
├── attendance_records/
│
├── student_lists/
│
├── qrcodes/
│
├── templates/
│   └── index.html
│
├── static/
│   └── style.css
│
└── screenshots/
```

---

# ⚙️ Installation

## 1. Clone the Repository

```bash
git clone https://github.com/001Rshubham/QR-Code-Based-Student-Attendance-System.git
```

## 2. Navigate to the Project Folder

```bash
cd QR-Code-Based-Student-Attendance-System
```

## 3. Install Required Packages

```bash
pip install -r requirements.txt
```

---

# ▶️ How to Use

## Step 1: Create a Student List

Inside the **student_lists** folder, create a text file for each **class or subject**.

Example:

```text
student_lists/
├── Python.txt
├── Java.txt
├── DataScience.txt
└── ClassA.txt
```

Each file should contain **one student name per line**.

Example (`Python.txt`)

```text
Rahul Sharma
Priya Patil
Amit Kumar
Sneha Joshi
Rohan Singh
```

---

## Step 2: Generate QR Codes

Run the QR Generator.

```bash
python qr_generator.py
```

When prompted, enter the student list filename.

Example

```text
📁 Enter (LIKE-class1.txt):
Python.txt
```

The generated QR codes will be stored in:

```text
qrcodes/
└── Python/
    ├── Rahul Sharma.png
    ├── Priya Patil.png
    ├── Amit Kumar.png
    └── ...
```

---

## Step 3: Scan Student QR Codes

Run the scanner.

```bash
python scan_attendance.py
```

The webcam will open.

Each student scans their QR code.

The system will:

- Detect the QR code
- Read Student Name
- Read Class/Subject Name
- Record Date & Time
- Prevent duplicate scans during the current session

Attendance will be stored inside:

```text
attendance_records/
└── Python_2026-07-14.csv
```

---

## Step 4: Open the Attendance Dashboard

Run the Flask application.

```bash
python app.py
```

Open your browser and visit:

```text
http://127.0.0.1:5000
```

Using the dashboard you can:

- 📋 View attendance
- 📥 Download attendance CSV files
- 🗑 Clear attendance records

---

# 🔄 Project Workflow

```text
Create Student List
        │
        ▼
Generate QR Codes
        │
        ▼
Distribute QR Codes to Students
        │
        ▼
Students Scan QR Codes
        │
        ▼
Webcam Detects QR Code
        │
        ▼
Attendance Recorded in CSV
        │
        ▼
View Attendance on Flask Dashboard
        │
        ├──────────────┐
        ▼              ▼
Download CSV     Clear Records
```

---

# 📸 Screenshots

## Student List

_Add screenshot here_

```
screenshots/student_list.png
```

---

## Generated QR Codes

_Add screenshot here_

```
screenshots/qr_codes.png
```

---

## QR Scanner

_Add screenshot here_

```
screenshots/scanner.png
```

---

## Attendance CSV

_Add screenshot here_

```
screenshots/csv_output.png
```

---

## Flask Dashboard

_Add screenshot here_

```
screenshots/dashboard.png
```

---

# 🎯 Learning Outcomes

This project helped me gain practical experience in:

- Python Programming
- Flask Web Development
- OpenCV
- QR Code Technology
- CSV File Handling
- Computer Vision
- File Management
- Git & GitHub
- Problem Solving

---

# 🚀 Future Enhancements

- SQLite/MySQL Database Integration
- Student Login System
- Teacher/Admin Login
- Face Recognition Attendance
- Mobile Application
- Cloud Database
- Attendance Analytics Dashboard
- Email Notifications
- QR Code Expiry & Security

---

# 🤝 Contributing

Contributions are welcome.

1. Fork this repository.
2. Create a new branch.

```bash
git checkout -b feature-name
```

3. Commit your changes.

```bash
git commit -m "Add new feature"
```

4. Push the branch.

```bash
git push origin feature-name
```

5. Create a Pull Request.

---

# 👨‍💻 Author

**Shubham Landge**

🎓 B.Tech – Artificial Intelligence & Data Science

- 💼 LinkedIn: https://www.linkedin.com/in/YOUR-LINKEDIN-USERNAME
- 🐙 GitHub: https://github.com/001Rshubham
- 📧 Email: your-email@example.com

> Replace the LinkedIn and Email placeholders with your actual details.

---

# ⭐ Support

If you found this project useful, please consider giving it a **⭐ Star** on GitHub.

---

# 📜 License 


This project is licensed under the **MIT License**.

Feel free to use, modify, and distribute this project for educational and personal purposes.
