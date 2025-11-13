START TRANSACTION;

SELECT
    *
FROM
    s_characters
ORDER BY
    id;

UPDATE s_characters
SET
    buff = buff + 0.25
WHERE
    job IN ('Fighter', 'Monk', 'Samurai', 'Ninja') AND
    guild IS NULL;

SELECT
    *
FROM
    s_characters
ORDER BY
    id;

ROLLBACK;