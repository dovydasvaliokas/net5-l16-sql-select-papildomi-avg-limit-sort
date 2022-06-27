
-- Surandame pigiausio recepto kainą
SELECT
    MIN(kaina)
FROM
    `receptas`;


-- Surandame patį receptą, kuris yra pigiausias
SELECT
    *
FROM
    `receptas`
WHERE
    kaina =(
    SELECT
        MIN(kaina)
    FROM
        `receptas`
);


-- Surandame patį kaloringiausią receptą
SELECT
    *
FROM
    `receptas`
WHERE
    kalorijos_per100g =(
    SELECT
        MAX(kalorijos_per100g)
    FROM
        `receptas`
);


-- Surandame visų receptų kainos vidurkį
SELECT
    AVG(kaina)
FROM
    `receptas`;


-- Surandame ir išvedame (visus stulpelius) receptų, kurie yra brangesni už vidurkį
SELECT
    *
FROM
    `receptas`
WHERE
    kaina >(
    SELECT
        AVG(kaina)
    FROM
        `receptas`
);

-- Surandame visų receptų kainų sumą
SELECT
    SUM(kaina)
FROM
    `receptas`;


-- Surandame receptų kainų sumą, tų receptų, kurie turi daugiau nei 800 kalorijų
SELECT
    SUM(kaina)
FROM
    `receptas`
WHERE
    kalorijos_per100g > 800;


-- Grąžina kiek receptų turi kategorijas
SELECT
    COUNT(kategorija_id)
FROM
    `receptas`;



-- Grąžiona kiek receptų turi kainas
SELECT
    COUNT(kaina)
FROM
    `receptas`;


-- Grąžina kiek yra receptų, kurių kalorijų dydis yra didesnis nei 800
SELECT
    COUNT(*)
FROM
    `receptas`
WHERE
    kalorijos_per100g > 800;
