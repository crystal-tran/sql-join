-- write your queries here

--First problem

SELECT *
FROM owners
    LEFT JOIN vehicles
        ON owners.id = vehicles.owner_id
ORDER BY owners.id,
    vehicles.id;

--Second problem

SELECT first_name, COUNT(*) AS count
FROM owners
    INNER JOIN vehicles
        ON owners.id = vehicles.owner_id
GROUP BY first_name, owners.id
ORDER BY first_name;

--Third problem

SELECT first_name,
    (SUM(price) / COUNT(*))::int AS average_price,
    COUNT(*) AS count
FROM owners
    INNER JOIN vehicles
        ON owners.id = vehicles.owner_id
GROUP BY first_name, owners.id
HAVING COUNT(*) > 1 AND SUM(price) / COUNT(*) > 10000
ORDER BY first_name DESC;













-- Personal notes
-- We used left join because we see that owner_id in the table vehicles is a foreign key, and is not nullable
-- therefore we know it will have a owner_id assigned to each row
-- Don't necessarily need to use full but it will work for this case.
