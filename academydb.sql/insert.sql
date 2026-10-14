use academy;

insert into clases(class_name, places)
values ('501 violet', 24),
	   ('502 ground', 22),
       ('403 yellow', 18);

insert into student_groups(group_name, stud_count, speciality)
value ('РПО-1', 16, 'разработчик 4 года'),
      ('РПО-2', 16, 'разработчик 4 года'),
      ('ГД-1', 14, 'графический дизайнер 3 года');
      
insert into teachers(full_name, email, phone, created_at)
value ('иванов иван петрович', 'ivanov@mail.com', '+79785353555', '2022-05-05'),
      ('иванов василий петрович', 'ivanov55@mail.com', '+79785353525', '2023-05-05'),
      ('соколова анна петрович', 'sokolova@mail.com', '+79785353551', '2022-06-05');
