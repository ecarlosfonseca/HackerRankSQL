SELECT 
    CASE
        WHEN Grades.Grade >= 8
        THEN Students.Name
        WHEN Grades.Grade < 8
        THEN NULL
    END, Grades.Grade, Students.Marks 
FROM Students INNER JOIN Grades ON Students.Marks BETWEEN Grades.Min_Mark AND Max_Mark 
ORDER BY Grades.Grade DESC, Students.Name ASC, Students.Marks ASC;