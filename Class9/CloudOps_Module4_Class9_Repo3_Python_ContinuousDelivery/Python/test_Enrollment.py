from Enrollment import Enrollment
import pytest

enrollment_id=1
course_id=2
student_id=3


def testCreateEnrollmentAndReturnDetails():
    enrollment = Enrollment(enrollment_id, course_id, student_id)
    enrolledCourseID, enrolledStudentID = enrollment.getEnrollmentDetails()

    assert enrolledCourseID == course_id
    assert enrolledStudentID == student_id