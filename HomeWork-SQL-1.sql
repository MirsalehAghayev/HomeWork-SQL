CREATE DATABASE Library;

USE Library;


CREATE TABLE Books (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(100),
    Price money,
    PageCount INT,
    Published DATE,
    CreatedDate DATETIME DEFAULT GETDATE()
);


SELECT * FROM Books;

SELECT Id, Name, Author, Price FROM Books;

INSERT INTO Books (Name, Author, Genre, Price, PageCount, Published)
VALUES
  ('Bakidan gelen xefiyye', 'Elxan Elatli', 'detektiv ', 29.99, 500, '2019-01-01'),
  ('Reqemsal qala', 'Dan Brown', 'detektiv ', 9.99, 250, '2018-02-15'),
  ('Baki bulvari', 'Cingiz Abdullayev', 'detektiv', 39.99, 400, '2020-03-22'),
  ('The Scent of Death', 'Simon Beckett', 'detektiv', 4.99, 200, '2019-04-10'),
  ('Xilaskar', ' Jo Nesbo', 'detektiv', 24.99, 350, '2022-05-05');

SELECT * FROM Books;

SELECT * FROM Books ORDER BY Price;

SELECT TOP 3 * FROM Books ORDER BY Price;

SELECT * FROM Books WHERE Author = 'Cingiz Abdullayev'


UPDATE Books SET Price = Price * 1.05 WHERE Author = 'Cingiz Abdullayev';

SELECT * FROM Books;

DELETE FROM Books WHERE Price > 10.00;


SELECT * FROM Books;
