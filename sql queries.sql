############################### 1
SELECT DISTINCT
    (app),
    rating
FROM
    apps
ORDER BY rating DESC
LIMIT 10;

################################ 2
SELECT DISTINCT
    (app), installs, reviews, rating
FROM
    apps
WHERE
    rating = 5
ORDER BY reviews DESC
LIMIT 10;

################################ 3
SELECT 
    app, reviews, category
FROM
    apps
ORDER BY reviews DESC
LIMIT 1;

################################ 4
SELECT 
    SUM(installs * price) AS revenue
FROM
    apps;

################################ 5
SELECT 
    category, SUM(installs) AS total_installs
FROM
    apps
GROUP BY category
ORDER BY total_installs DESC
LIMIT 1;

############################### 6
SELECT 
    category, COUNT(DISTINCT (app)) AS total_apps
FROM
    apps
GROUP BY category
ORDER BY total_apps DESC
LIMIT 1;

############################### 7
SELECT DISTINCT
    (app), category, installs
FROM
    apps
WHERE
    category = 'GAME'
ORDER BY installs DESC;

#8
SELECT 
    *
FROM
    apps
WHERE
    androidver IN ('4.0.3 and up' , '4.2 and up',
        '4.4 and up',
        '4.1 and up',
        '5.0 and up',
        '6.0 and up',
        '7.0 and up',
        '5.1 and up',
        '4.3 and up',
        '7.1 and up',
        '7.0 - 7.1.1',
        '8.0 and up',
        '4.1 - 7.1.1',
        '5.0 - 6.0',
        '5.0 - 7.1.1');

############################################ 9a
SELECT 
    COUNT(DISTINCT (app))
FROM
    apps
WHERE
    price = 0;

############################################ 9b
SELECT 

    COUNT(DISTINCT (app))

FROM

    Apps

WHERE
    price != 0;

############################################ 10
SELECT 
    *
FROM
    apps
WHERE
    category = 'Dating'
ORDER BY reviews DESC
LIMIT 1;

############################################ 11a

SELECT 
    COUNT(*)
FROM
    play_store_apps.reviews
WHERE
    app = '10 Best Foods for You'
        AND sentiment = 'Positive';
        
############################################ 11b
SELECT 
    COUNT(*)
FROM
    play_store_apps.reviews
WHERE
    app = '10 Best Foods for You'
        AND sentiment = 'Negative';


############################################ 12
SELECT 
    *
FROM
    play_store_apps.reviews_1
WHERE
    app = 'ASUS SuperNote'
        AND sentiment_polarity = 1
        AND sentiment_subjectivity = 1;

############################################ 13
 
SELECT 
    *
FROM
    play_store_apps.reviews
WHERE
    app = 'Abs Training-Burn belly fat'
        AND sentiment = 'Neutral';

############################################ 14
SELECT 
    *
FROM
    play_store_apps.reviews
WHERE
    app = 'Adobe Acrobat Reader'
        AND sentiment = 'Negative';


