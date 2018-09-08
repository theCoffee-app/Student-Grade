SELECT student.id, student.firstName, student.lastName, gradeItem.course, gradeItem.gradeItem, gradeItem.maxPts, gradeItem.score, (1.0 * gradeItem.score / gradeItem.maxPts) AS prct
FROM student
RIGHT JOIN gradeItem ON student.id = gradeItem.id;