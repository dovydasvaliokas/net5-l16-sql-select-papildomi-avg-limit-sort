-- Paimame visą receptų lentelę
SELECT *
FROM `receptas`;


-- Paimame visų receptų lentelės pavadinimo ir kainos stulpelius
SELECT
    `pavadinimas`, `kaina`
FROM
    `receptas`;


-- Paimame ketvirto recepto (pagal id) pavadinimą ir kalorijas
-- apostrofų (`) ženklo rašyti nebūtina
SELECT
    `pavadinimas`, `kalorijos_per100g`
FROM
    `receptas`
WHERE
	id = 4;



-- Paimame visų receptų, kurių kaina yra mažesnė nei 12, id ir pavadinimo stulpelius
-- apostrofų (`) ženklo rašyti nebūtina
SELECT
    id, pavadinimas
FROM
    `receptas`
WHERE
    kaina < 12;



-- Paimame visų receptų, kurių kaina yra didesnė nei 10 IR kalorijų skaičius didesnis nei 400, pavadinimo ir nurodymų stulpelius
SELECT
    pavadinimas, nurodymai
FROM
    `receptas`
WHERE
    kaina > 10 AND `kalorijos_per100g` > 400;


-- Paimame visų receptų, kurių pavadinimas yra arba "Mutinys", arba "Košė", id ir kainų stulpelius
SELECT
    id, nurodymai
FROM
    `receptas`
WHERE
    pavadinimas = "Mutinys" OR pavadinimas = "Košė";


    