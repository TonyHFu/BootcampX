SELECT students.name AS student, COUNT(assignment_submissions.*) AS total_submissions
  FROM students JOIN assignment_submissions ON students.id = student_id
  WHERE students.end_date IS NULL
  GROUP BY students.name
  HAVING COUNT(assignment_submissions.*) < 100;