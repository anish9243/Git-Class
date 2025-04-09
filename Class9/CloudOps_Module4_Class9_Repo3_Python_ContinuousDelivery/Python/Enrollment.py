class Enrollment:

    enrollment_id = 0 
    course_id = ""
    student_id = ""

    def __init__(self, enrollment_id, course_id, student_id):
        self.enrollment_id = enrollment_id
        self.course_id = course_id
        self.student_id = student_id

    def getEnrollmentDetails(self):
        return self.course_id, self.student_id
