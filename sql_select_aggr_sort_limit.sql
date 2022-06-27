
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


-- Išvedame visus receptus surikiuotus pagal kainas didėjimo tvarka
SELECT
    *
FROM
    `receptas`
ORDER BY
    kaina ASC;



-- Išvedame visus receptus surikiuotus pagal kainą mažėjimo tvarka, o jeigu kaian tokia pati, tai pagal kalorijas didėjančio
SELECT
    *
FROM
    `receptas`
ORDER BY
	kaina DESC,
    kalorijos_per100g ASC;


-- Išvedame surikiuotus receptus (kurių kaina mažesnė nei 5) pagal pavadinimą abėcėlės didėjančia tvarka
SELECT
    *
FROM
    `receptas`
WHERE
    kaina < 5
ORDER BY
	pavadinimas ASC;


-- Išvedame pirmus penkis naudojant limit
SELECT
    *
FROM
    `receptas`
LIMIT 5


-- Galima pasakyti NUO KELINTO pradėti išvedinėti. Tai tarkim išvedame nuo penkto dar penkis, tai gaunasi nuo 5 iki 10
SELECT
    *
FROM
    `receptas`
LIMIT 5, 5


-- Išvedame brangiausius tris receptus (naudojant order by ir limit kartu),
SELECT
    *
FROM
    `receptas`
ORDER BY
	kaina DESC
LIMIT 3
