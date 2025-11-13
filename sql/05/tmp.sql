START TRANSACTION;

SELECT
    id,
    guild,
    job
FROM
    s_characters;

UPDATE s_characters
SET
    guild = NULL,
    job = 'Exile'
WHERE
    id IN (1, 2);

SELECT
    id,
    guild,
    job
FROM
    s_characters;

ROLLBACK;