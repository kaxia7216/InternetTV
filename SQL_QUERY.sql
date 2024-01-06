-- 1.よく見られているエピソードを知りたいです。エピソード視聴数トップ3のエピソードタイトルと視聴数を取得してください
SELECT epi.episode_name, v.view_count
  FROM view AS v
 INNER JOIN episodes AS epi
    ON v.episode_id = epi.id
 ORDER BY v.view_count DESC
 LIMIT 3;

-- 2.よく見られているエピソードの番組情報やシーズン情報も合わせて知りたいです。
--   エピソード視聴数トップ3の番組タイトル、シーズン数、エピソード数、エピソードタイトル、視聴数を取得してください
SELECT prog.program_name, sea.seasons_total, epi.episode_total, epi.episode_name, v.view_count 
  FROM view AS v
 INNER JOIN episodes AS epi
    ON v.episode_id = epi.id
 INNER JOIN programs AS prog 
    ON epi.program_id = prog.id
 INNER JOIN seasons AS sea 
    ON prog.id = sea.program_id
 ORDER BY v.view_count DESC
 LIMIT 3;

-- 3.本日の番組表を表示するために、本日、どのチャンネルの、何時から、何の番組が放送されるのかを知りたいです。
--   本日放送される全ての番組に対して、チャンネル名、放送開始時刻(日付+時間)、放送終了時刻、
--   シーズン数、エピソード数、エピソードタイトル、エピソード詳細を取得してください。
--   なお、番組の開始時刻が本日のものを本日方法される番組とみなすものとします
SELECT prog.program_name, cha.channel_name, epi.release_date, ti.start_time, ti.ending_time, 
       sea.seasons_total, epi.episode_total, epi.episode_name, epi.discription
  FROM programs AS prog
 INNER JOIN episodes AS epi
    ON prog.id = epi.program_id
 INNER JOIN channels AS cha
    ON prog.channel_id = cha.id
 INNER JOIN seasons AS sea
    ON prog.id = sea.program_id
 INNER JOIN time_zone AS ti
    ON prog.timezone_id = ti.id
 WHERE epi.release_date = (SELECT CURRENT_DATE);

-- 4.ドラマというチャンネルがあったとして、ドラマのチャンネルの番組表を表示するために、
--   本日から一週間分、何日の何時から何の番組が放送されるのかを知りたいです。
--   ドラマのチャンネルに対して、放送開始時刻、放送終了時刻、シーズン数、エピソード数、エピソードタイトル、
--   エピソード詳細を本日から一週間分取得してください

SELECT prog.program_name, cha.channel_name, epi.release_date, ti.start_time, ti.ending_time, 
       sea.seasons_total, epi.episode_total, epi.episode_name, epi.discription
  FROM programs AS prog
 INNER JOIN episodes AS epi
    ON prog.id = epi.program_id
 INNER JOIN channels AS cha
    ON prog.channel_id = cha.id
 INNER JOIN seasons AS sea
    ON prog.id = sea.program_id
 INNER JOIN time_zone AS ti
    ON prog.timezone_id = ti.id
 INNER JOIN genres AS ge
    ON prog.genre_id = ge.id
 WHERE prog.genre_id = '1' 
   AND epi.release_date > (SELECT CURRENT_DATE) 
   AND epi.release_date < (SELECT DATE_ADD(CURRENT_DATE(),INTERVAL '7' DAY));