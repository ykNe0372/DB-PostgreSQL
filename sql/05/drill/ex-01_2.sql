START TRANSACTION;

DELETE FROM s_characters
WHERE
    last_login_at IS NULL OR
    CAST(created_on AS DATE) < '2023-12-31';

SELECT
    *
FROM
    s_characters
ORDER BY
    created_on;

ROLLBACK;