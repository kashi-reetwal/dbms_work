<div align="center">

<!-- Banner -->
<img src="https://capsule-render.vercel.app/api?type=waving&color=0:0f0c29,50:302b63,100:24243e&height=200&section=header&text=DBMS%20Lab%20%F0%9F%97%84%EF%B8%8F&fontSize=52&fontColor=ffffff&fontAlignY=38&desc=Database%20Management%20Systems%20%E2%80%94%20MySQL%20Practice&descAlignY=58&descColor=a78bfa" alt="banner"/>

<br/>

![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/Language-SQL-F29111?style=for-the-badge&logo=sqlite&logoColor=white)
![Status](https://img.shields.io/badge/Status-Active-22c55e?style=for-the-badge)
![Author](https://img.shields.io/badge/Author-Kashi%20Reetwal-a78bfa?style=for-the-badge&logo=github&logoColor=white)

</div>

---

## 🗂️ What's Inside

> A structured collection of MySQL scripts covering core **DBMS concepts** — built as part of my academic lab work. Each query is annotated, organised by topic, and ready to run on any MySQL 8.x server.

---

## 📐 Schema Overview

```
company_db
└── employee
    ├── emp_id      INT          PRIMARY KEY
    ├── name        VARCHAR(20)  NOT NULL
    ├── email       VARCHAR(100) UNIQUE
    ├── age         INT          CHECK (age >= 18)
    ├── department  VARCHAR(100) DEFAULT 'General'
    └── salary      DECIMAL      DEFAULT 30000  CHECK (salary > 0)
```

---

## 📋 Topics Covered

| # | Concept | Keyword(s) | Description |
|---|---------|-----------|-------------|
| 1 | **Database Setup** | `CREATE DATABASE`, `USE` | Bootstrap a fresh schema |
| 2 | **DDL – Create** | `CREATE TABLE` | Define table with 5 constraints |
| 3 | **Constraints** | `PRIMARY KEY`, `NOT NULL`, `UNIQUE`, `CHECK`, `DEFAULT` | Data integrity rules |
| 4 | **DML – Insert** | `INSERT INTO` | Full & partial row insertion |
| 5 | **DML – Select** | `SELECT`, `WHERE` | Query all rows & filter by salary |
| 6 | **DML – Update** | `UPDATE`, `SET` | Bulk salary raise for HR dept |
| 7 | **DML – Delete** | `DELETE WHERE` | Remove a specific employee |
| 8 | **DDL – Alter** | `ALTER TABLE ADD COLUMN` | Add `score` column on-the-fly |
| 9 | **DDL – Truncate** | `TRUNCATE TABLE` | Wipe data, preserve schema |
| 10 | **DDL – Drop** | `DROP TABLE` | Destroy table completely |
| 11 | **Aggregates** | `COUNT(*)` | Row counting |

---

## ⚡ Quick Start

```bash
# 1. Clone the repo
git clone https://github.com/kashi97000/dbms_work.git
cd dbms_work

# 2. Open MySQL shell
mysql -u root -p

# 3. Run the script
SOURCE company_db.sql;
```

---

## 🔍 Key Concepts Explained

<details>
<summary><b>🔑 Constraints</b></summary>

| Constraint | Column | Rule |
|-----------|--------|------|
| `PRIMARY KEY` | `emp_id` | Unique, non-null identifier |
| `NOT NULL` | `name` | Cannot be left blank |
| `UNIQUE` | `email` | No two employees share an email |
| `CHECK` | `age` | Must be ≥ 18 |
| `CHECK` | `salary` | Must be > 0 |
| `DEFAULT` | `department` | Falls back to `'General'` |
| `DEFAULT` | `salary` | Falls back to `30000` |

</details>

<details>
<summary><b>🔄 DDL vs DML</b></summary>

```
DDL (Data Definition Language)   →   Shapes the structure
  CREATE · ALTER · DROP · TRUNCATE

DML (Data Manipulation Language) →   Moves the data
  INSERT · SELECT · UPDATE · DELETE
```

</details>

<details>
<summary><b>⚠️ TRUNCATE vs DROP vs DELETE</b></summary>

| Operation | Removes Data | Removes Schema | Rollback? |
|-----------|:---:|:---:|:---:|
| `DELETE` | ✅ (conditional) | ❌ | ✅ |
| `TRUNCATE` | ✅ (all rows) | ❌ | ❌ |
| `DROP` | ✅ | ✅ | ❌ |

</details>

---

## 📁 Repository Structure

```
dbms_work/
├── company_db.sql   ← Main lab script (annotated)
└── README.md        ← You are here
```

---

## 👤 Author

<div align="center">

**Kashi Reetwal**

[![GitHub](https://img.shields.io/badge/GitHub-kashi97000-181717?style=flat-square&logo=github)](https://github.com/kashi97000)

</div>

---

<div align="center">
<img src="https://capsule-render.vercel.app/api?type=waving&color=0:24243e,50:302b63,100:0f0c29&height=120&section=footer" alt="footer"/>
</div>
