CREATE DEFINER=`root`@`localhost` FUNCTION `random_id_range`(tables_name varchar(50)) RETURNS int
    READS SQL DATA
BEGIN
	declare t_id int;
    select id into t_id
    from teachers order by rand() limit 1;
RETURN t_id;
END

CREATE DEFINER=`root`@`localhost` FUNCTION `add_name_subject`() RETURNS varchar(50) CHARSET utf8mb4
    READS SQL DATA
BEGIN
return elt(floor(rand() * 5) + 1, 
	'информатика', 'биология', 'физика', 'химия', 'бд');
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_teacher_insert`(in count int)
BEGIN
	declare i int default 1;
    declare count int default 1;
    select Count(id)
    into i
    from teachers;
    set count = i + 100;
    
    while i < count do
    insert into teachers(full_name, email, phone, created_at)
    values(
		Concat("teacher", i),
        Concat("teach_", i, "@gmail.com"),
        Concat("+7978", LPAD(i,7,"0")),
        curdate()
    );
		set i = i+1;
    end while; 
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_subjects_insert`(in count int)
BEGIN
   declare i int default 1;
    declare count int default 1;
    declare t_id int default 1;
    select Count(id) into i from subjects;
    set count = i + 100;
    
    while i < count do
        set t_id = random_id_range("teachers");
		insert into subjects(sub_name, hours, teachers_id)
        
		values(
			add_name_subject(),
			floor(rand() * 100),
			t_id
		);
		set i = i+1;
    end while; 
END
