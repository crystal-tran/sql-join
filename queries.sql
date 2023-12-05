-- write your queries here

SELECT *
FROM owners
    LEFT JOIN vehicles
        ON owners.id = vehicles.owner_id
ORDER BY owners.id,
    vehicles.id;













-- Personal notes
-- We used left join because we see that owner_id in the table vehicles is a foreign key, and is not nullable
-- therefore we know it will have a owner_id assigned to each row
-- Don't necessarily need to use full but it will work for this case.
