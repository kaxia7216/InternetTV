-- Channelsテーブルのサンプルデータ
INSERT INTO channels (channel_name) VALUES
    ('JHK'),
    ('TAS'),
    ('Mt.Fuji TV'),
    ('TV Yuuhi'),
    ('TV Sea');

-- Time_zoneテーブルのサンプルデータ
INSERT INTO time_zone (start_time, ending_time) VALUES
    ('08:00:00', '12:00:00'),
    ('12:00:00', '16:00:00'),
    ('16:00:00', '20:00:00'),
    ('20:00:00', '00:00:00'),
    ('00:00:00', '04:00:00');

-- Genresテーブルのサンプルデータ
INSERT INTO genres (genres_name) VALUES
    ('Drama'),
    ('Comedy'),
    ('News'),
    ('Sports'),
    ('Documentary');

-- Programsテーブルのサンプルデータ
INSERT INTO programs (program_name, discription, timezone_id, channel_id, genre_id) VALUES
    ('Morning News', 'Morning news program', 1, 1, 3),
    ('Comedy Show', 'Entertaining comedy show', 2, 2, 2),
    ('Sports Highlights', 'Sports news and highlights', 3, 3, 4),
    ('Drama Series', 'Engaging drama series', 4, 4, 1),
    ('Documentary Special', 'Special documentary presentation', 5, 5, 5);

-- Episodesテーブルのサンプルデータ
INSERT INTO episodes (episode_name, episode_no, season_no, discription, video_time, release_date, program_id) VALUES
    ('The Beginning', 1, 1, 'First episode of the series', '00:30:00', '2024-01-01', 4),
    ('Laugh Out Loud', 2, 1, 'Comedy skit extravaganza', '00:30:00', '2024-02-01', 2),
    ('Sports Insight', 3, 2, 'In-depth sports coverage', '00:30:00', '2024-03-01', 3),
    ('Tears of Destiny', 4, 1, 'Emotional drama unfolds', '00:30:00', '2024-04-01', 1),
    ('The Unknown World', 5, 2, 'Exploring a fascinating subject', '00:30:00', '2024-05-01', 5);

-- Seasonsテーブルのサンプルデータ
INSERT INTO seasons (program_id, seasons_total) VALUES
    (4, 1),
    (2, 1),
    (3, 2),
    (1, 1),
    (5, 2);

-- Viewテーブルのサンプルデータ
INSERT INTO view (channel_id, episode_id, view_count) VALUES
    (1, 1, 100),
    (2, 2, 150),
    (3, 3, 200),
    (1, 4, 120),
    (2, 5, 180);

