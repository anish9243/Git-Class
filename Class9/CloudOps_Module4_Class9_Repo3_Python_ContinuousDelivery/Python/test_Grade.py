from Grade import Grade
import pytest

enrollment_id=1
assignment_id=2
mark=80


def testCreateGradeAndReturnDetails():
    grade = Grade(enrollment_id, assignment_id, mark)
    gradedMark = grade.getGradeDetails()

    assert gradedMark == mark