-- Запити для створення таблиць
CREATE TABLE categories (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE news (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  publication_date DATE NOT NULL,
  category_id INT,
  FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE comments (
  id INT PRIMARY KEY AUTO_INCREMENT,
  content TEXT NOT NULL,
  publication_date DATE NOT NULL,
  news_id INT,
  FOREIGN KEY (news_id) REFERENCES news(id)
);

CREATE TABLE ratings (
  id INT PRIMARY KEY AUTO_INCREMENT,
  rating INT NOT NULL,
  ip_address VARCHAR(255) NOT NULL,
  news_id INT,
  FOREIGN KEY (news_id) REFERENCES news(id)
);

-- Запити для вставки даних у таблиці (приклади)
INSERT INTO categories (name) VALUES ('Політика');
INSERT INTO categories (name) VALUES ('Спорт');
INSERT INTO categories (name) VALUES ('Наука');

INSERT INTO news (title, content, publication_date, category_id) VALUES ('Заголовок новини 1', 'Текст новини 1', '2023-05-25', 1);
INSERT INTO news (title, content, publication_date, category_id) VALUES ('Заголовок новини 2', 'Текст новини 2', '2023-05-25', 2);
INSERT INTO news (title, content, publication_date, category_id) VALUES ('Заголовок новини 3', 'Текст новини 3', '2023-05-25', 3);

INSERT INTO comments (content, publication_date, news_id) VALUES ('Коментар до новини 1', '2023-05-25', 1);
INSERT INTO comments (content, publication_date, news_id) VALUES ('Коментар до новини 2', '2023-05-25', 2);
INSERT INTO comments (content, publication_date, news_id) VALUES ('Коментар до новини 3', '2023-05-25', 3);

INSERT INTO ratings (rating, ip_address, news_id) VALUES (5, '192.168.0.1', 1);
INSERT INTO ratings (rating, ip_address, news_id) VALUES (4, '192.168.0.2', 2);
INSERT INTO ratings (rating, ip_address, news_id) VALUES (3, '192.168.0.3', 3);

-- Збереження у файл
OUTPUT TO 'news_portal.sql';
