
from Students import Students
from Enrollments import Enrollments
from EnrollmentHelper import EnrollmentHelper
import json


enrollments = Enrollments()
students = Students()
enrollmentHelper = EnrollmentHelper(enrollments, students)


def loadTestData():
    enrollments.allEnrollments.clear()
    enrollments.bulkLoad()
    students.bulkLoad()


def testListStudentsByCourseID():
    loadTestData()
    listOfStudents = enrollmentHelper.listStudentsByCourseID(2)
    assert ("Smith" in listOfStudents) == True
    assert ("Johnson" in listOfStudents) == True




