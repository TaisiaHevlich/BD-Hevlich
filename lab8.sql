-- Створення таблиці "Користувачі"
CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  username VARCHAR(255),
  password VARCHAR(255)
);

-- Створення таблиці "Проекти"
CREATE TABLE Projects (
  project_id INT PRIMARY KEY,
  project_name VARCHAR(255),
  project_description TEXT
);

-- Створення таблиці "Таски"
CREATE TABLE Tasks (
  task_id INT PRIMARY KEY,
  task_name VARCHAR(255),
  task_description TEXT,
  author_id INT,
  project_id INT,
  FOREIGN KEY (author_id) REFERENCES Users(user_id),
  FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

-- Створення таблиці "Виконавці"
CREATE TABLE Assignees (
  assignee_id INT,
  task_id INT,
  FOREIGN KEY (assignee_id) REFERENCES Users(user_id),
  FOREIGN KEY (task_id) REFERENCES Tasks(task_id)
);

-- Створення таблиці "Файли проекту"
CREATE TABLE ProjectFiles (
  file_id INT PRIMARY KEY,
  file_name VARCHAR(255),
  file_url VARCHAR(255),
  project_id INT,
  FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

-- Створення таблиці "Файли таска"
CREATE TABLE TaskFiles (
  file_id INT PRIMARY KEY,
  file_name VARCHAR(255),
  file_url VARCHAR(255),
  task_id INT,
  FOREIGN KEY (task_id) REFERENCES Tasks(task_id)
);

-- Вставка користувачів


INSERT INTO Users (user_id, username, password)
VALUES (1, 'LeonardoDeCaprio', 'password1');

INSERT INTO Users (user_id, username, password)
VALUES (2, 'MikeJohnson', 'password2');

-- Вставка проектів
INSERT INTO Projects (project_id, project_name, project_description)
VALUES (1, 'Project A', 'Description of Project A');

INSERT INTO Projects (project_id, project_name, project_description)
VALUES (2, 'Project B', 'Description of Project B');

-- Вставка тасків
INSERT INTO Tasks (task_id, task_name, task_description, author_id, project_id)
VALUES (1, 'Task 1', 'Description of Task 1', 1, 1);

INSERT INTO Tasks (task_id, task_name, task_description, author_id, project_id)
VALUES (2, 'Task 2', 'Description of Task 2', 2, 1);

-- Вставка виконавців
INSERT INTO Assignees (assignee_id, task_id)
VALUES (2, 1);

INSERT INTO Assignees (assignee_id, task_id)
VALUES (3, 1);

INSERT INTO Assignees (assignee_id, task_id)
VALUES (1, 2);

-- Вставка файлів проекту
INSERT INTO ProjectFiles (file_id, file_name, file_url, project_id)
VALUES (1, 'File 1', 'http://example.com/file1', 1);

INSERT INTO ProjectFiles (file_id, file_name, file_url, project_id)
VALUES (2, 'File 2', 'http://example.com/file2', 2);

-- Вставка файлів таска
INSERT INTO TaskFiles (file_id, file_name, file_url, task_id)
VALUES (1, 'Task File 1', 'http://example.com/taskfile1', 1);

INSERT INTO TaskFiles (file_id, file_name, file_url, task_id)
VALUES (2, 'Task File 2', 'http://example.com/taskfile2', 2);
