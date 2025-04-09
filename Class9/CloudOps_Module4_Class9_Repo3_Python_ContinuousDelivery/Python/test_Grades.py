import csv
from Grade import Grade
from Grades import Grades
import pytest


grades = Grades()

def testBulkLoadGrades():
    grades.allGrades.clear()
    assert grades.bulkLoad() == 13

def testAddOneGrade():
    grade = Grade(1, 2, 3)
    assert grades.addGrade(grade) == True

