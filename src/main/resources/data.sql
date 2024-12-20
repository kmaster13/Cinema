INSERT INTO public.film_creators (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by,
                                  updated_when, full_name, position)
VALUES (1, 'admin', localtimestamp, null, null, false, null, null, 'Дэвид Финчер',
        'Режиссер') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.film_creators (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by,
                                  updated_when, full_name, position)
VALUES (2, 'admin', localtimestamp, null, null, false, null, null, 'Росс Грэйсон Белл',
        'Продюсер') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.film_creators (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by,
                                  updated_when, full_name, position)
VALUES (3, 'admin', localtimestamp, null, null, false, null, null, 'Джим Улс', 'Сценарий') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.film_creators (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by,
                                  updated_when, full_name, position)
VALUES (4, 'admin', localtimestamp, null, null, false, null, null, 'Квентин Тарантино',
        'Режиссер') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.film_creators (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by,
                                  updated_when, full_name, position)
VALUES (5, 'admin', localtimestamp, null, null, false, null, null, 'Роджер Эвери',
        'Сценарий') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.film_creators (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by,
                                  updated_when, full_name, position)
VALUES (6, 'admin', localtimestamp, null, null, false, null, null, 'Роберт Земекис',
        'Режиссер') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.film_creators (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by,
                                  updated_when, full_name, position)
VALUES (7, 'admin', localtimestamp, null, null, false, null, null, 'Фрэнк Дарабонт',
        'Режиссер') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.film_creators (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by,
                                  updated_when, full_name, position)
VALUES (8, 'admin', localtimestamp, null, null, false, null, null, 'Стивен Спилберг',
        'Режиссер') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.film_creators (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by,
                                  updated_when, full_name, position)
VALUES (9, 'admin', localtimestamp, null, null, false, null, null, 'Сергей Бондарчук',
        'Режиссер') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.film_creators (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by,
                                  updated_when, full_name, position)
VALUES (10, 'admin', localtimestamp, null, null, false, null, null, 'Марк ДиСалле',
        'Режиссер') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.film_creators (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by,
                                  updated_when, full_name, position)
VALUES (11, 'admin', localtimestamp, null, null, false, null, null, 'Гай Ричи', 'Режиссер') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.film_creators (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by,
                                  updated_when, full_name, position)
VALUES (12, 'admin', localtimestamp, null, null, false, null, null, 'Кристофер Нолан',
        'Режиссер') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.film_creators (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by,
                                  updated_when, full_name, position)
VALUES (13, 'admin', localtimestamp, null, null, false, null, null, 'Клим Шипенко',
        'Режиссер') ON CONFLICT (id) DO NOTHING;

-- INSERT INTO public.film_creators (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by,
--                                   updated_when, full_name, position)
-- VALUES (14, 'admin', localtimestamp, null, null, false, null, null, 'Джеймс Кэмерон', 'Режиссер') ON CONFLICT (id) DO NOTHING;


INSERT INTO public.films (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          country, description, genre, poster_file_name, release_year, title)
VALUES (1, 'admin', localtimestamp, null, null, false, null, null, 12,
        'Сотрудник страховой компании страдает хронической бессонницей и отчаянно пытается вырваться из мучительно скучной жизни. Однажды в очередной командировке он встречает некоего Тайлера Дёрдена — харизматического торговца мылом с извращенной философией.',
        2, '1.jpg', 1999, 'Бойцовский клуб') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.films (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          country, description, genre, poster_file_name, release_year, title)
VALUES (2, 'admin', localtimestamp, null, null, false, null, null, 52,
        'Двое бандитов Винсент Вега и Джулс Винфилд ведут философские беседы в перерывах между разборками и решением проблем с должниками криминального босса Марселласа Уоллеса.',
        3, '2.jpg', 1994, 'Криминальное чтиво') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.films (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          country, description, genre, poster_file_name, release_year, title)
VALUES (3, 'admin', localtimestamp, null, null, false, null, null, 23,
        'Сидя на автобусной остановке, Форрест Гамп — не очень умный, но добрый и открытый парень — рассказывает случайным встречным историю своей необыкновенной жизни.',
        2, '3.jpg', 1994, 'Форрест Гамп') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.films (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          country, description, genre, poster_file_name, release_year, title)
VALUES (4, 'admin', localtimestamp, null, null, false, null, null, 2,
        'Бухгалтер Энди Дюфрейн обвинён в убийстве собственной жены и её любовника. Оказавшись в тюрьме под названием Шоушенк, он сталкивается с жестокостью и беззаконием, царящими по обе стороны решётки.',
        2, '4.jpg', 1994, 'Побег из Шоушенка') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.films (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          country, description, genre, poster_file_name, release_year, title)
VALUES (5, 'admin', localtimestamp, null, null, false, null, null, 9,
        'Фильм рассказывает реальную историю загадочного Оскара Шиндлера, члена нацистской партии, преуспевающего фабриканта, спасшего во время Второй мировой войны почти 1200 евреев.',
        2, '5.jpg', 1993, 'Список Шиндлера') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.films (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          country, description, genre, poster_file_name, release_year, title)
VALUES (6, 'admin', localtimestamp, null, null, false, null, null, 15,
        'Июль 1942 года. На подступах к Сталинграду обескровленные, измотанные советские войска ведут тяжелые оборонительные бои, неся огромные потери... Фильм рассказывает о подвиге рядовых солдат, любви к родной земле, об истинной цене победы...',
        4, '6.jpg', 1975, 'Они сражались за Родину') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.films (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          country, description, genre, poster_file_name, release_year, title)
VALUES (7, 'admin', localtimestamp, null, null, false, null, null, 12,
        'Братья Курт и Эрик Слоан отправляются в Таиланд, на родину кикбоксинга, чтобы доказать местным бойцам превосходство американской школы над тайской. Эрик, чемпион Америки по кикбоксингу, встречается в бою с Тонг По, чемпионом Таиланда.',
        5, '7.jpg', 1989, 'Кикбоксер') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.films (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          country, description, genre, poster_file_name, release_year, title)
VALUES (8, 'admin', localtimestamp, null, null, false, null, null, 9,
        'Фрэнки Четыре Пальца должен был переправить краденый алмаз из Англии в США своему боссу Эви, но, сделав ставку на подпольный боксерский поединок, он попал в круговорот весьма нежелательных событий.',
        1, '8.jpg', 2000, 'Большой куш') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.films (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          country, description, genre, poster_file_name, release_year, title)
VALUES (9, 'admin', localtimestamp, null, null, false, null, null, 6,
        'Когда засуха, пыльные бури и вымирание растений приводят человечество к продовольственному кризису, коллектив исследователей и учёных отправляется сквозь червоточину в путешествие...',
        0, '9.jpg', 2014, 'Интерстеллар') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.films (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          country, description, genre, poster_file_name, release_year, title)
VALUES (10, 'admin', localtimestamp, null, null, false, null, null, 3,
        'Торакальный хирург Женя за месяц должна подготовиться к космическому полету, чтобы отправиться на МКС и спасти заболевшего космонавта. Ей придётся преодолеть неуверенность и страхи, а также провести сложнейшую операцию в условиях невесомости.',
        2, '10.jpg', 2023, 'Вызов') ON CONFLICT (id) DO NOTHING;

INSERT INTO public.films (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          country, description, genre, poster_file_name, release_year, title)
VALUES (11, 'admin', localtimestamp, null, null, false, null, null, 2,
        'Подросток Марти с помощью машины времени, сооружённой его другом-профессором доком Брауном, попадает из 80-х в далекие 50-е. Там он встречается со своими будущими родителями, ещё подростками, и другом-профессором, совсем молодым.',
        0, '11.jpg', 1985, 'Назад в будущее') ON CONFLICT (id) DO NOTHING;



INSERT INTO public.films_film_creators (film_id, film_creator_id)
VALUES (1, 1) ON CONFLICT (film_id, film_creator_id) DO NOTHING;
INSERT INTO public.films_film_creators (film_id, film_creator_id)
VALUES (1, 2) ON CONFLICT (film_id, film_creator_id) DO NOTHING;
INSERT INTO public.films_film_creators (film_id, film_creator_id)
VALUES (1, 3) ON CONFLICT (film_id, film_creator_id) DO NOTHING;
INSERT INTO public.films_film_creators (film_id, film_creator_id)
VALUES (2, 4) ON CONFLICT (film_id, film_creator_id) DO NOTHING;
INSERT INTO public.films_film_creators (film_id, film_creator_id)
VALUES (2, 5) ON CONFLICT (film_id, film_creator_id) DO NOTHING;
INSERT INTO public.films_film_creators (film_id, film_creator_id)
VALUES (3, 6) ON CONFLICT (film_id, film_creator_id) DO NOTHING;
INSERT INTO public.films_film_creators (film_id, film_creator_id)
VALUES (4, 7) ON CONFLICT (film_id, film_creator_id) DO NOTHING;
INSERT INTO public.films_film_creators (film_id, film_creator_id)
VALUES (5, 8) ON CONFLICT (film_id, film_creator_id) DO NOTHING;
INSERT INTO public.films_film_creators (film_id, film_creator_id)
VALUES (6, 9) ON CONFLICT (film_id, film_creator_id) DO NOTHING;
INSERT INTO public.films_film_creators (film_id, film_creator_id)
VALUES (7, 10) ON CONFLICT (film_id, film_creator_id) DO NOTHING;
INSERT INTO public.films_film_creators (film_id, film_creator_id)
VALUES (8, 11) ON CONFLICT (film_id, film_creator_id) DO NOTHING;
INSERT INTO public.films_film_creators (film_id, film_creator_id)
VALUES (9, 12) ON CONFLICT (film_id, film_creator_id) DO NOTHING;
INSERT INTO public.films_film_creators (film_id, film_creator_id)
VALUES (10, 13) ON CONFLICT (film_id, film_creator_id) DO NOTHING;
INSERT INTO public.films_film_creators (film_id, film_creator_id)
VALUES (11, 6) ON CONFLICT (film_id, film_creator_id) DO NOTHING;
-- INSERT INTO public.films_film_creators (film_id, film_creator_id) VALUES (12, 14) ON CONFLICT (film_id, film_creator_id) DO NOTHING;


INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (0, 'admin', localtimestamp, null, null, false, null, null, 1, 1, 0) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (1, 'admin', localtimestamp, null, null, false, null, null, 1, 2, 0) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (2, 'admin', localtimestamp, null, null, false, null, null, 1, 3, 0) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (3, 'admin', localtimestamp, null, null, false, null, null, 2, 1, 0) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (4, 'admin', localtimestamp, null, null, false, null, null, 2, 2, 0) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (5, 'admin', localtimestamp, null, null, false, null, null, 2, 3, 0) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (6, 'admin', localtimestamp, null, null, false, null, null, 3, 1, 0) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (7, 'admin', localtimestamp, null, null, false, null, null, 3, 2, 0) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (8, 'admin', localtimestamp, null, null, false, null, null, 3, 3, 0) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (9, 'admin', localtimestamp, null, null, false, null, null, 1, 1, 1) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (10, 'admin', localtimestamp, null, null, false, null, null, 1, 2, 1) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (11, 'admin', localtimestamp, null, null, false, null, null, 1, 3, 1) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (12, 'admin', localtimestamp, null, null, false, null, null, 2, 1, 1) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (13, 'admin', localtimestamp, null, null, false, null, null, 2, 2, 1) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (14, 'admin', localtimestamp, null, null, false, null, null, 2, 3, 1) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (15, 'admin', localtimestamp, null, null, false, null, null, 3, 1, 1) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (16, 'admin', localtimestamp, null, null, false, null, null, 3, 2, 1) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (17, 'admin', localtimestamp, null, null, false, null, null, 3, 3, 1) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (18, 'admin', localtimestamp, null, null, false, null, null, 1, 1, 2) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (19, 'admin', localtimestamp, null, null, false, null, null, 1, 2, 2) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (20, 'admin', localtimestamp, null, null, false, null, null, 1, 3, 2) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (21, 'admin', localtimestamp, null, null, false, null, null, 2, 1, 2) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (22, 'admin', localtimestamp, null, null, false, null, null, 2, 2, 2) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (23, 'admin', localtimestamp, null, null, false, null, null, 2, 3, 2) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (24, 'admin', localtimestamp, null, null, false, null, null, 3, 1, 2) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (25, 'admin', localtimestamp, null, null, false, null, null, 3, 2, 2) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.seats (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          place, row, type)
VALUES (26, 'admin', localtimestamp, null, null, false, null, null, 3, 3, 2) ON CONFLICT (id) DO NOTHING;




INSERT INTO public.roles (id, description, title)
VALUES (1, 'Пользователь', 'USER') ON CONFLICT (id) DO NOTHING;


INSERT INTO public.users (id, created_by, created_when, deleted_by, deleted_when, is_deleted, updated_by, updated_when,
                          birth_date, change_password_token, email, first_name, last_name, login, password, role_id)
VALUES (1, 'anonymousUser', localtimestamp, null, null, false, null, null, '2000-01-01', null,
        'u@mail.com', 'u', 'u', 'u', '$2a$10$O0umHw3.FGcL4ebia460BedI4Kb3ERiuxF.tGzPq6Y9kXNlMEZ0rC',
        1) ON CONFLICT (id) DO NOTHING;


