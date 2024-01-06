-- Channelsテーブルの作成
CREATE TABLE channels (
    PRIMARY KEY (id),
    id INT NOT NULL AUTO_INCREMENT,
    channel_name CHAR(30) NOT NULL
);


-- Time_zoneテーブルの作成
CREATE TABLE time_zone (
    PRIMARY KEY (id),
    id INT NOT NULL AUTO_INCREMENT,
    start_time TIME(0) NOT NULL,
    ending_time TIME(0) NOT NULL
);


-- Genresテーブルの作成
CREATE TABLE genres (
    PRIMARY KEY (id),
    id INT NOT NULL AUTO_INCREMENT,
    genres_name CHAR(30) NOT NULL
);


-- Programsテーブルの作成
CREATE TABLE programs (
    PRIMARY KEY (id),
    id INT NOT NULL AUTO_INCREMENT,
    program_name CHAR(50) NOT NULL,
    discription TEXT,
    timezone_id INT NOT NULL,
    channel_id INT NOT NULL,
    genre_id INT NOT NULL,
    FOREIGN KEY (timezone_id) REFERENCES time_zone (id),
    FOREIGN KEY (channel_id) REFERENCES channels (id),
    FOREIGN KEY (genre_id) REFERENCES genres (id)
);


-- Episodesテーブルの作成
CREATE TABLE episodes (
    PRIMARY KEY (id),
    FOREIGN KEY (program_id) REFERENCES programs (id),
    id INT NOT NULL AUTO_INCREMENT,
    episode_name CHAR(50) NOT NULL,
    episode_total INT NOT NULL,
    episode_no INT NOT NULL,
    season_no INT NOT NULL,
    discription TEXT,
    video_time TIME(0) NOT NULL,
    release_date DATE NOT NULL,
    program_id INT NOT NULL
);


-- Seasonsテーブルの作成
CREATE TABLE seasons (
    FOREIGN KEY (program_id) REFERENCES programs (id),
    program_id INT NOT NULL,
    seasons_total INT NOT NULL
);


-- Viewテーブルの作成
CREATE TABLE view (
    FOREIGN KEY (channel_id) REFERENCES channels (id),
    FOREIGN KEY (episode_id) REFERENCES episodes (id),
    channel_id INT NOT NULL,
    episode_id INT NOT NULL,
    view_count INT NOT NULL,
    INDEX viewcount_index (view_count)
);

