-- Найти список студентов в определенной группе.
SELECT gr.name, s.fullname
FROM [groups] gr 
LEFT JOIN students s ON s.group_id = gr.id
WHERE gr.id = 2;