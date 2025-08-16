# School Database - MySQL Project

This repository contains SQL scripts and queries for a **School Database** built in MySQL.  
It demonstrates database creation, table creation, data insertion, indexing, and query execution for educational record management.

## 📂 Database Overview

**Database Name:** `school`  
**Tables:**
1. **students** – Stores student personal and academic details.
2. **courses** – Stores course information including teacher and credits.

### Table: `students`
| Column       | Type         | Description |
|--------------|--------------|-------------|
| student_id   | INT (PK)     | Unique student ID (Auto Increment) |
| full_name    | VARCHAR(100) | Student's full name |
| gender       | VARCHAR(10)  | Gender |
| age          | INT          | Age |
| course       | VARCHAR(50)  | Course enrolled (FK to `courses.course_name`) |
| grade        | CHAR(1)      | Academic grade |
| email        | VARCHAR(100) | Email address |
| phone        | VARCHAR(20)  | Contact number |

### Table: `courses`
| Column       | Type         | Description |
|--------------|--------------|-------------|
| course_name  | VARCHAR(50) (PK) | Name of the course |
| teacher      | VARCHAR(100)    | Course instructor |
| credits      | INT             | Credit hours |

---

## 📜 Main Operations Covered

- **Database Creation:**

- **Table Creation & Data Insertion:**  
Created `students` and `courses` tables, inserted 30 student records and 5 course records.

- **Data Retrieval Examples:**

- **Joins:**  
Display student names with their course and teacher name:

- **Aggregate Functions & Subqueries:**  
- Students older than the average age.
- Average age by course.

- **Index Creation:**

---

## 📊 Example Output Highlights

- **Students per course:**
  ```
  English          - 7
  Science          - 6
  History          - 7
  Computer Science - 5
  Mathematics      - 5
  ```

- **Sample Join Result:**
  ```
  full_name      | course_name | teacher
  -------------- | ----------- | -----------------
  Aarav Patel    | Science     | Mr. Rajesh Verma
  Sai Verma      | Science     | Mr. Rajesh Verma
  ...
  ```

---

## 🚀 How to Use
1. Clone this repository.
2. Open MySQL Workbench or Command Line client.
3. Run the provided SQL commands to recreate the database and tables.
4. Execute the queries to explore the dataset.

---

## 📌 Purpose
This project demonstrates:
- SQL table design
- Data insertion
- Filtering, ordering, grouping
- Joins between tables
- Using subqueries
- Index creation for performance

---

## 📝 License
This project is free to use for learning and teaching SQL concepts.
