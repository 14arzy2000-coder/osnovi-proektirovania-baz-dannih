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
      
insert into subjects(id, sub_name, hours, teachers_id)
values (1, 'Математика', 120, 1),
       (2, 'Физика', 90, 2),
       (3, 'Информатика', 100, 1),
       (4, 'Английский язык', 80, 2);
      
insert into lessons(id, theme_name, stud_count, subject_id, stud_group_id, teacher_id, date_at)
values (1, 'Основы теории', 20, 2, 1, 2, '2022-04-05 09:00:00'),
       (2, 'Практическая работа', 18, 1, 2, 1, '2022-04-20 11:00:00'),
       (3, 'Контрольная работа', 22, 4, 1, 2, '2022-05-03 10:00:00'),
       (4, 'Лабораторная работа', 19, 3, 2, 1, '2022-05-05 13:00:00');

insert into student_grades(value_grade, teacher_id, student_id, subject_id, lesson_id, created_at)
value (3, 1, 2, 3, 1, '2022-05-05'),
      (1, 2, 3, 2, 1, '2022-04-05'),
      (2, 2, 1, 3, 3, '2022-05-03');
      
insert into shedules(date_day, lesson_1_id, lesson_2_id, lesson_3_id, lesson_4_id, lesson_5_id, lesson_6_id, lesson_7_id, lesson_8_id, created_at)
values ('2022-04-05', 1, 2, 1, 2, 3, 1, 2, 1, '2022-04-01'),
       ('2022-04-20', 2, 1, 2, 3, 3, 2, 1, 3, '2022-04-15'),
       ('2022-05-03', 3, 1, 2, 3, 1, 2, 2, 1, '2022-04-28'),
       ('2022-05-05', 4, 1, 3, 2, 3, 3, 2, 1, '2022-04-30');
