
<p align="center">
  <img src="https://readme-typing-svg.herokuapp.com?font=Poppins&size=35&pause=1000&color=00C2FF&center=true&vCenter=true&width=600&lines=Session_DB;JSP+%7C+JDBC+%7C+Session+Management;Login+%26+Registration+System" />
</p>

A simple Java JSP & JDBC based Login and Registration System with Session Management.

## 📌 Project Overview

This project demonstrates:

- User Registration
- User Login Authentication
- Session Management
- Logout Functionality
- Success & Error Handling Pages
- Database Connectivity using JDBC

The application is developed using:

- Java
- JSP
- JDBC
- MySQL
- Apache Tomcat

---

# 🚀 Features

✅ User Registration  
✅ User Login  
✅ Session Tracking  
✅ Logout using Session Invalidation  
✅ JDBC Database Connectivity  
✅ Success & Error Pages  
✅ Simple JSP Frontend

---

# 🛠 Technologies Used

- Java
- JSP
- JDBC
- MySQL
- Apache Tomcat
- HTML/CSS

---

# 📂 Project Structure

session_db/
│
├── home.jsp
├── login.jsp
├── LoginProcess.jsp
├── registrationprocess.jsp
├── success.jsp
├── error.jsp
├── logout.jsp
│
├── WEB-INF/
│
└── Database Connectivity using JDBC

---

# 📄 JSP Pages Description

## 1. home.jsp
Home page of the application.

## 2. login.jsp
Contains login form for users.

## 3. LoginProcess.jsp
Validates user credentials using JDBC and creates session.

## 4. registrationprocess.jsp
Registers new users into database.

## 5. success.jsp
Displayed after successful login.

## 6. error.jsp
Displayed when login fails or any error occurs.

## 7. logout.jsp
Invalidates current session and logs out user.

---

# 🗄 Database Configuration

## Database Name
session_db

## Example Table

```sql
CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    password VARCHAR(100)
);
```
---
## Database Connectivity (OracleDB)

```java
String driver = "oracle.jdbc.driver.OracleDriver";
Class.forName(driver);

String url = "jdbc:oracle:thin:@localhost:1521:xe";
String userid_db = "xyz";
String password_db = "xyz";

Connection con = DriverManager.getConnection(
    url,
    userid_db,
    password_db
);

Statement stmt = con.createStatement();
```
