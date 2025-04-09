class Course:

    course_ID = 0 
    course_Name = ""
    level = ""

    def __init__(self, course_id, course_name, level):
        self.course_id = course_id
        self.course_name = course_name
        self.level = level

    def getCourseName(self):
        return self.course_name
