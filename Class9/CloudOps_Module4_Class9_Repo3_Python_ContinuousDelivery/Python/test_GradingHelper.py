from Grades import Grades
from Courses import Courses
from Enrollments import Enrollments
from GradingHelper import GradingHelper

grades = Grades()
courses = Courses()
enrollments = Enrollments()
gradingHelper = GradingHelper(grades, courses, enrollments)


def loadTestData():
    grades.allGrades.clear()
    courses.allCourses.clear()
    enrollments.allEnrollments.clear()
    grades.bulkLoad()
    courses.bulkLoad()
    enrollments.bulkLoad()


def testListStudentsByCourseID_OneGrade():
    loadTestData()
    gradesResult = gradingHelper.listGradesByStudentID(6)
    assert len(gradesResult) == 1
    assert int(gradesResult[0][3]) == 90

def testListStudentsByCourseID_ManyGrades():
    loadTestData()
    gradesResult = gradingHelper.listGradesByStudentID(1)
    assert len(gradesResult) == 8


