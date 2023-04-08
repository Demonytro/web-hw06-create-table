-- Найти список курсов, которые посещает определенный студент.
SELECT s.fullname, d.name
FROM disciplines d 
LEFT JOIN students s ON s.id = d.id
WHERE s.id = 7 OR s.id IN (1,2,3,4,5)
--КАК ВЫВЕСТИ СПИСОК ВСЕХ КУРСОВ???
;

SELECT d.name, s.fullname
FROM students s 
LEFT JOIN disciplines d ON d.id = s.id
WHERE d.id = 2
ORDER BY d.id;