-- CREATE TABLE todo_list_2 (
--   id serial primary key,
-- title varchar not null,
-- details varchar null,
-- priority integer not null default 1,
-- created_at time not null,
-- completed boolean not null default false,
-- completed_at timestamp null
-- );

INSERT INTO todo_list_2 (title, details, created_at) VALUES
  ('walk the dog', 'go by the park', '11:19 AM'),
  ('wash the car', 'make it squeaky clean', '11:19 AM'),
  ('eat cake', 'very easy chore', '11:19 AM'),
  ('plant some vegatable', 'healthy', '11:30 AM'),
  ('finish coding', 'this DB specifically', '12:01 PM');

INSERT INTO todo_list_2 (title, details, priority, created_at) VALUES
  ('code some more', 'all day every day', 7, '11:53 AM'),
  ('code even more', 'all day every day',4,'11:59 AM'),
  ('code even even more', 'all day every day', 3, '11:59 AM'),
  ('code even even even more', 'all day every other day', 3, '11:59 AM'),
  ('clean kitty litter', 'I don''t own a cat...', 2, '11:59 AM'),
  ('clean guinea pig cage', 'I don''t own a guinea pig...', 2, '12:07 PM');


-- SELECT title, details FROM todo_list_2 WHERE completed = 'f';
--
-- SELECT COUNT(id) FROM todo_list_2 WHERE completed = 'f' AND priority = 3;
--
-- SELECT * FROM todo_list_2 WHERE priority > 1;
--
-- SELECT * FROM todo_list_2 WHERE priority >= 3;
--
-- UPDATE todo_list_2 SET completed = 'f' WHERE priority >= 3;
--
-- UPDATE todo_list_2 SET completed = 't' WHERE title = 'finish coding';
--
-- DELETE FROM todo_list_2 WHERE completed = 't';

select * from todo_list_2 where
  completed_at is null
  order by
    priority desc,
    created_at asc
  limit 1;

DELETE FROM todo_list_2;
