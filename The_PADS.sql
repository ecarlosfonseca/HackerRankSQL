/* Concat is limited to two argumets, || substitutes
the concat function */

SELECT Name || '(' || SUBSTR(Occupation, 0, 1) || ')'
FROM OCCUPATIONS
ORDER BY Name;

SELECT 'There are a total of ' || Count(Name) || ' ' || LOWER(Occupation) || 's.'
FROM Occupations
GROUP BY Occupation
ORDER BY Count(Name), Occupation;