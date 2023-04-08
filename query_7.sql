-- Найти оценки студентов в отдельной группе по определенному предмету.
SELECT gr.name, d.name, s.fullname, g.grade
FROM grades g
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN disciplines d ON d.id = g.discipline_id
LEFT JOIN [groups] gr ON gr.id = s.group_id 
WHERE d.id = 2 AND gr.id = 2;