SELECT cohorts.name AS cohort, count(assignment_submissions.*) AS total_submissions
FROM cohorts 
JOIN students ON cohort_id = cohorts.id
JOIN assignment_submissions ON student_id = students.id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.*) DESC;