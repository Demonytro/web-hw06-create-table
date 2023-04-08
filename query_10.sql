-- Список курсов, которые определенному студенту читает определенный преподаватель.
SELECT t.fullname, s.fullname, d.name
FROM disciplines d
LEFT JOIN students s ON s.id = d.id
LEFT JOIN teachers t ON t.id = d.teacher_id
WHERE s.id BETWEEN 2 AND 25
--WHERE t.id IN (1,2,3,4,5) AND s.id BETWEEN 24 AND 25
--WHERE t.id = 5 AND s.id = 5
;