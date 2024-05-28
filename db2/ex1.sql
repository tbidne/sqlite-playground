SELECT winner, yr, subjectId
FROM nobel
WHERE subjectId = 2
ORDER BY yr DESC, winner ASC;

-- OUTPUT:
--
-- Sir Alexander Fleming|1945|2
-- Sir Howard Walter Florey|1945|2
-- Sir Henry Hallett Dale|1936|2
-- Sir Charles Scott Sherrington|1932|2
-- Sir Frederick Gowland Hopkins|1929|2
