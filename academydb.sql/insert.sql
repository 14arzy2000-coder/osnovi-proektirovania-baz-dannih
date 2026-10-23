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
      
insert into students(full_name, email, phone, student_groups_id, birthday_date, created_at)
value ('козлов иван петрович', 'kozlov@mail.com', '+79785353222', 1, '2002-05-05', '2022-05-05'),
      ('соболев василий петрович', 'sobolev@mail.com', '+79785353544', 2, '1995-05-05', '2023-05-05'),
      ('зайцева анна ивановна', 'zayceva@mail.com', '+79785353599', 3, '2000-05-05', '2022-06-05');

insert into subjects(subject_name)
values
    ('Математика'),
    ('Информатика'),
    ('История'),
    ('Русский язык'),
    ('Физика');

insert into student_grades(student_id, subject_id, grade)
values
    (1, 1, 5),
    (1, 2, 4),
    (2, 1, 4),
    (2, 3, 5),
    (3, 2, 5);

insert into lessons(subject_id, teacher_id, class_id)
values
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3);

insert into shedules(group_id, lesson_id, lesson_date, lesson_time)
values
    (1, 1, '2026-10-26', '09:00:00'),
    (1, 2, '2026-10-26', '10:00:00'),
    (2, 3, '2026-10-27', '09:00:00');
