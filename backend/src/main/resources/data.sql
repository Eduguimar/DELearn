INSERT INTO tb_user (name, email, password) VALUES ('Edu Guima', 'edu@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Sarah Ber', 'sarah@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Eduardo Guimara', 'guimara@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://cdn.pixabay.com/photo/2020/05/31/09/40/online-course-5242018_1280.jpg', 'https://static.thenounproject.com/png/1544154-200.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-07-13T03:00:00.00000Z', TIMESTAMP WITH TIME ZONE '2021-07-13T00:00:00.00000Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00.00000Z', TIMESTAMP WITH TIME ZONE '2021-11-20T00:00:00.00000Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://cdn.pixabay.com/photo/2020/05/31/09/40/online-course-5242018_1280.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://cdn.pixabay.com/photo/2020/05/31/09/40/online-course-5242018_1280.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://cdn.pixabay.com/photo/2020/05/31/09/40/online-course-5242018_1280.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Início das atividades', 1, 'https://cdn.pixabay.com/photo/2020/05/31/09/40/online-course-5242018_1280.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Continuação  das atividades', 2, 'https://cdn.pixabay.com/photo/2020/05/31/09/40/online-course-5242018_1280.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Fiinalização das atividades', 3, 'https://cdn.pixabay.com/photo/2020/05/31/09/40/online-course-5242018_1280.jpg', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-08-02T12:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-08-02T11:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Primeira lição do capitulo 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'conteúdo firmeza', 'https://www.youtube.com/watch?v=OX5MmJrFTdw');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Segunda lição do capitulo 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'conteúdo firmeza demais', 'https://www.youtube.com/watch?v=OX5MmJrFTdw');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Terceira lição do capitulo 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'conteúdo mais que firmeza', 'https://www.youtube.com/watch?v=OX5MmJrFTdw');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefinha do capitulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Tarefa do cap 1', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2021-08-01T12:00:00Z');

INSERT INTO tb_lessons_done (user_id, offer_id, lesson_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (user_id, offer_id, lesson_id) VALUES (1, 1, 2);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeira tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2021-05-01T12:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segunda tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2021-05-10T15:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceira tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2021-05-28T21:30:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://github.com/Eduguimar/DELearn', TIMESTAMP WITH TIME ZONE '2021-06-01T11:35:00Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do Tópico 1', 'Texto do tópico 1', TIMESTAMP WITH TIME ZONE '2021-05-09T17:20:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do Tópico 2', 'Texto do tópico 2', TIMESTAMP WITH TIME ZONE '2021-05-09T23:18:25Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do Tópico 3', 'Texto do tópico 3', TIMESTAMP WITH TIME ZONE '2021-05-10T11:12:51Z', 2, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do Tópico 4', 'Texto do tópico 4', TIMESTAMP WITH TIME ZONE '2021-05-10T12:10:20Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do Tópico 5', 'Texto do tópico 5', TIMESTAMP WITH TIME ZONE '2021-05-11T13:52:11Z', 1, 1, 3);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do Tópico 6', 'Texto do tópico 6', TIMESTAMP WITH TIME ZONE '2021-06-21T14:42:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (user_id, topic_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (user_id, topic_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, author_id, topic_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2021-05-10T09:50:03Z', 2, 1);
INSERT INTO tb_reply (body, moment, author_id, topic_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2021-05-10T12:02:50Z', 1, 1);

INSERT INTO tb_reply_likes (user_id, reply_id) VALUES (1, 1);
