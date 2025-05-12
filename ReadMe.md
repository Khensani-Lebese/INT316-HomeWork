GITStudents who participated:
222859735 Rafapa TS
220745449 KE Lebese
221145356 Bukhosini NR
220722007 C MASHABA

# Student Registration System

## Overview

The **Student Registration System** is a Java EE-based web application designed to allow students to register for courses and enable administrators to view all registered students. The project follows a **3-tier architecture** using **JSP, Servlets, Java Beans, JDBC**, and **EJB**, and is deployed on the **GlassFish Server**.

---

## Purpose

- **Students** can submit a registration form for their selected course.
- **Admins** can view a list of all registered students.
- Demonstrates use of EJB for business logic in a layered architecture.

---

## Technology Stack

- **Frontend (Presentation Layer)**: JSP, HTML, CSS, Bootstrap (optional)
- **Backend (Business Layer)**: Servlets, Java Beans, EJB (Enterprise JavaBeans)
- **Database (Data Layer)**: JDBC with MySQL or Apache Derby
- **Server**: GlassFish Server
- **IDE**: NetBeans (preferred for GlassFish integration)

---

## Architecture Overview

### 1. Presentation Layer (Client)

- `register.jsp` – A form to collect student name, student ID, and course.
- `success.jsp` – Displays confirmation after successful registration.
- `view.jsp` – Displays all registered students (admin view).

### 2. Business Layer (Servlets + Beans + EJB)

- `RegisterServlet` – Handles student registration form submissions.
- `Student` – JavaBean representing a student entity (name, ID, course).
- `StudentDAO` – Handles database operations like insert and fetch using JDBC.
- `StudentServiceEJB` – EJB that encapsulates business logic between servlet and DAO.

### 3. Data Layer (JDBC + MySQL/Derby)

- Uses JDBC to interact with a MySQL or Derby database.
- `students` table with columns: `id`, `name`, `studentId`, `course`.

---

## Project Structure

student-registration-system/
│
├── src/
│ ├── ejb/ # Stateless EJBs (e.g., StudentServiceEJB.java)
│ ├── model/ # JavaBeans (e.g., Student.java)
│ ├── servlet/ # Servlets (e.g., RegisterServlet.java)
│ ├── dao/ # DAO for database operations (e.g., StudentDAO.java)
│
├── web/
│ ├── register.jsp
│ ├── success.jsp
│ ├── view.jsp
│
├── sql/
│ └── schema.sql # SQL script to create the students table
├── README.md
└── nbproject/ # NetBeans configuration files

## How to Run

### Prerequisites

- Java JDK 8 or higher
- GlassFish Server (v5.1 or compatible)
- MySQL or Apache Derby
- NetBeans IDE (recommended)

### Setup Steps

1. **Clone the Repository**
   ```bash
   git clone https://github.com/Khensani-Lebese/INT316-HomeWork.git
   cd student-registration-system
   Create Database
   ```

Run schema.sql to create the students table.

Update DB credentials in the StudentDAO or use a jdbc-resource in GlassFish.

Configure GlassFish

Deploy the application as a WAR file or directly from NetBeans.

Ensure JDBC resource and connection pool are properly configured in GlassFish.

Build & Deploy

Clean and build the project.

Deploy to the GlassFish Server via NetBeans or Admin Console.

Access the App

Go to: http://localhost:8080/student-registration-system/register.jsp

License
This project is for academic and learning purposes only. No commercial use is allowed without permission.
