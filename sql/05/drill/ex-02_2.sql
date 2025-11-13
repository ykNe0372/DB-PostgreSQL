START TRANSACTION;

UPDATE s_characters
SET
    job = 'Mage'
WHERE
    job = 'Wizard';

SELECT
    *
FROM
    s_characters
ORDER BY
    id;

ROLLBACK;