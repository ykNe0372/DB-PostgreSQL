SELECT
    id,
    name,
    level,
    job
FROM
    s_characters
ORDER BY
    /* sql-formatter-disable */
    ARRAY_POSITION(
        ARRAY['Samurai', 'Ninja', 'Fighter', 'Monk', 'Priest', 'Wizard'],
        job
    ) NULLS LAST,
    /* sql-formatter-enable */ level DESC;