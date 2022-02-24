
-- __key,img,title,console,genre,publisher,developer,vg_score,critic_score,user_score,total_shipped,total_sales,na_sales,jp_sales,pal_sales,other_sales,release_date,last_update
-- 3,/games/boxart/full_3351915AmericaFrontccc.jpg,Warriors,Series,Action,Unknown,Omega Force,,,,42.06,,,,,,,2020-03-24
CREATE MAPPING IF NOT EXISTS games (
    __key BIGINT,
    img VARCHAR,
    title VARCHAR,
    console VARCHAR,
    genre VARCHAR,
    publisher VARCHAR,
    developer VARCHAR,
    vg_score DOUBLE,
    critic_score DOUBLE,
    user_score DOUBLE,
    total_shipped BIGINT,
    total_sales BIGINT,
    na_sales BIGINT,
    jp_sales BIGINT,
    pal_sales BIGINT,
    other_sales BIGINT,
    release_date VARCHAR,
    last_update VARCHAR
)
TYPE IMAP
OPTIONS (
    'keyFormat' = 'bigint',
    'valueFormat' = 'json-flat'
);


