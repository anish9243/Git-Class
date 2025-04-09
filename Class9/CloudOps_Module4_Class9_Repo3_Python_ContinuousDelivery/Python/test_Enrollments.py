import csv
from Enrollment import Enrollment
from Enrollments import Enrollments
import pytest


enrollments = Enrollments()

def testBulkLoadEnrollments():
    enrollments.allEnrollments.clear()
    assert enrollments.bulkLoad() == 10

def testAddOneEnrollment():
    enrollment = Enrollment(1, 2, 3)
    assert enrollments.addEnrollment(enrollment) == True

