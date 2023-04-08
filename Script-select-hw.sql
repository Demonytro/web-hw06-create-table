--Знайти 5 студентів із найбільшим середнім балом з усіх предметів

SELECT s.fullname, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g
LEFT JOIN students s ON s.id = g.student_id
GROUP BY s.id 
ORDER BY avg_grade DESC
LIMIT 5;

--2 Знайти студента із найвищим середнім балом з певного предмета.

SELECT d.name, s.fullname, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN disciplines d ON d.id = g.discipline_id 
WHERE d.id = 5
GROUP BY s.id
ORDER BY avg_grade DESC
LIMIT 1;

--3 Знайти середній бал у групах з певного предмета.

SELECT gr.name, d.name, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN disciplines d ON d.id = g.discipline_id
LEFT JOIN [groups] gr ON gr.id = s.group_id 
WHERE d.id = 1
GROUP BY gr.id
ORDER BY avg_grade DESC;


--4 Найти средний балл на потоке (по всей таблице оценок).
SELECT ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g;

--5 Найти какие курсы читает определенный преподаватель.
SELECT d.name, t.fullname
FROM disciplines d
LEFT JOIN teachers t ON t.id = d.teacher_id
WHERE t.id = 4
GROUP BY d.id;

--6 Найти список студентов в определенной группе.
SELECT gr.name, s.fullname
FROM [groups] gr 
LEFT JOIN students s ON s.group_id = gr.id
WHERE gr.id = 2;

--7 Найти оценки студентов в отдельной группе по определенному предмету.
SELECT gr.name, d.name, s.fullname, g.grade
FROM grades g
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN disciplines d ON d.id = g.discipline_id
LEFT JOIN [groups] gr ON gr.id = s.group_id 
WHERE d.id = 2 AND gr.id = 2;

--8 Найти средний балл, который ставит определенный преподаватель по своим предметам.
SELECT t.fullname, d.name, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g
LEFT JOIN disciplines d ON d.id = g.discipline_id
LEFT JOIN teachers t ON t.id = d.teacher_id
WHERE t.id = 4
GROUP BY d.id;

--9 Найти список курсов, которые посещает определенный студент.
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

--10 Список курсов, которые определенному студенту читает определенный преподаватель.
SELECT t.fullname, s.fullname, d.name
FROM disciplines d
LEFT JOIN students s ON s.id = d.id
LEFT JOIN teachers t ON t.id = d.teacher_id
WHERE s.id BETWEEN 2 AND 25
--WHERE t.id IN (1,2,3,4,5) AND s.id BETWEEN 24 AND 25
--WHERE t.id = 5 AND s.id = 5
;
