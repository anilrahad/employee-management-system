# Employee Management System — Java Swing


A desktop Employee Management System built with Java Swing and MySQL via JDBC.  
Supports adding, updating, deleting, and displaying employee records.

---

## Project Structure

```
EmployeeManagementSystem/
├── src/
│   └── project/
│       ├── CreateConnection.java   # JDBC connection setup
│       ├── Employee.java           # Employee data model
│       ├── Operations.java         # DB operations (CRUD)
│       ├── Query.java              # SQL query constants
│       ├── Window.java             # Swing GUI (main entry point)
│       └── employee.png            # App icon
├── lib/
│   └── mysql-connector-java-8.0.30.jar
├── bin/                            # Compiled .class files (git-ignored)
├── employee.sql                    # Database setup script
├── run.bat                         # Windows run script
├── run.sh                          # Mac/Linux run script
├── .classpath                      # Eclipse classpath
├── .project                        # Eclipse project file
└── .gitignore
```

---

## Prerequisites

- **Java 17+** — [Download JDK](https://adoptium.net/)
- **MySQL 8.0+** — [Download MySQL](https://dev.mysql.com/downloads/)

---

## Setup

### 1. Create the database

Open MySQL and run the setup script:

```bash
mysql -u root -p < employee.sql
```

Or paste the contents of `employee.sql` into MySQL Workbench and execute it.

### 2. Configure your database credentials

Edit `src/project/CreateConnection.java` and update these three lines:

```java
final private static String url      = "jdbc:mysql://localhost:3306/employee";
final private static String username = "root";
final private static String password = "your_password_here";
```

### 3. Run the application

**Option A — Double-click script (easiest)**

- Windows: double-click `run.bat`
- Mac/Linux: run `bash run.sh` in terminal

**Option B — Eclipse**

1. Open Eclipse → `File > Import > Existing Projects into Workspace`
2. Select this folder → Finish
3. Right-click `Window.java` → `Run As > Java Application`

**Option C — Command line (manual)**

```bash
# Windows
javac -cp "lib\mysql-connector-java-8.0.30.jar" -d bin src\project\*.java
java  -cp "bin;lib\mysql-connector-java-8.0.30.jar" project.Window

# Mac / Linux
javac -cp "lib/mysql-connector-java-8.0.30.jar" -d bin src/project/*.java
java  -cp "bin:lib/mysql-connector-java-8.0.30.jar" project.Window
```

---

## Features

| Feature | Description |
|---|---|
| Add employee | Enter details and click **ADD EMPLOYEE** |
| Update employee | Click a row to load it, edit fields, click **UPDATE** |
| Delete employee | Click a row, click **DELETE**, confirm the prompt |
| Display all | All employees shown in a sortable JTable on launch |
