from Course import Course
import pytest

course_id=1
course_name="DevOps theory and practice"
level="Intermediate"


def testCreateCourseAndReturnName():
    course = Course(course_id, course_name, level)
    assert course.getCourseName() == course_name