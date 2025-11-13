START TRANSACTION;

DELETE FROM s_characters
WHERE
    CAST('2025-10-15' AS DATE) - CAST(last_login_at AS DATE) >= 60;

SELECT
    id,
    name,
    CAST('2025-10-15' AS DATE) - CAST(last_login_at AS DATE) || ' days ago' AS "Days Since Last Login"
FROM
    s_characters
ORDER BY
    last_login_at;

ROLLBACK;