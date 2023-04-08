-- Найти средний балл на потоке (по всей таблице оценок).
SELECT ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g;