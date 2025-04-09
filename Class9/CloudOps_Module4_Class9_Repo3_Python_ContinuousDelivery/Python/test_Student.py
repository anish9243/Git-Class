from Student import Student
import pytest

student_ID=1
first_Name="Jane"
surname="Wen"
date_Of_Birth="6/12/1999"

def testCreateStudentAndReturnSurname():
    student = Student(student_ID, first_Name, surname, date_Of_Birth)
    assert student.getSurname() == surname