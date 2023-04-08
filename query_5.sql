-- Найти какие курсы читает определенный преподаватель.
SELECT d.name, t.fullname
FROM disciplines d
LEFT JOIN teachers t ON t.id = d.teacher_id
WHERE t.id = 4
GROUP BY d.id;