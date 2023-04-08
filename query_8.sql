-- Найти средний балл, который ставит определенный преподаватель по своим предметам.
SELECT t.fullname, d.name, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g
LEFT JOIN disciplines d ON d.id = g.discipline_id
LEFT JOIN teachers t ON t.id = d.teacher_id
WHERE t.id = 4
GROUP BY d.id;