"""File contains just one class, used to process grades"""

from Grades import Grades
from Courses import Courses
from Enrollments import Enrollments


class GradingHelper:
    """ Helper class used to combine data from grades, courses and enrollments data objects. """

    grades = Grades
    courses = Courses
    enrollments = Enrollments


    def __init__(self, grades, courses, enrollments):
        """ Constructor """
        self.grades = grades
        self.courses = courses
        self.enrollments = enrollments

    def listGradesByStudentID(self, student_id):
        """ Method to provide a list of grades for a specific student id """
        students_grades = []
        for current_enrollment in self.enrollments.allEnrollments:
            current_student_id = int(current_enrollment.student_id)
            if current_student_id == student_id:
                for current_course in self.courses.allCourses:
                    if current_enrollment.course_id == current_course.course_id:
                        for current_grade in self.grades.allGrades:
                            if current_enrollment.enrollment_id == current_grade.enrollment_id:
                                current_course_name = current_course.course_name
                                current_assignment_id  = current_grade.assignment_id
                                current_mark = current_grade.mark
                                student_grade = [current_student_id, current_course_name, \
                                    current_assignment_id, current_mark]
                                students_grades.append(student_grade)

        return students_grades
