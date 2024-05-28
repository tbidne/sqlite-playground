SELECT n.winner, n.yr, c.subject
FROM nobel n
INNER JOIN category c on n.subjectId = c.id
WHERE c.subject = 'medicine'
ORDER BY yr DESC, winner ASC;

-- OUTPUT:
--
-- Sir Alexander Fleming|1945|medicine
-- Sir Howard Walter Florey|1945|medicine
-- Sir Henry Hallett Dale|1936|medicine
-- Sir Charles Scott Sherrington|1932|medicine
-- Sir Frederick Gowland Hopkins|1929|medicine
