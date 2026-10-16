use chopdb;

insert into pokupateli (name_pokupatelya, numberr, email, balance) values
('Иван Петров', '+79001112233', 'ivan@mail.ru', 5000),
('Анна Смирнова', '+79004445566', 'anna@mail.ru', 3000);

insert into kategorii_productov (name_kategorii) values
('Электроника'), ('Одежда'), ('Книги');

insert into products (name_pr, articul, id_kategorii) values
('Наушники', 1001, 1),
('Футболка', 2001, 2),
('Python для начинающих', 3001, 3);

insert into zakazy (vrema_pokupki, id_pokupatelya, id_producta) values
('2026-10-10', 1, 1),
('2026-10-11', 1, 3),
('2026-10-12', 2, 2);
