from Course import Course
import csv
import os
from Utilities import Utilities

class Courses:
    
    allCourses= []
    lastRow=""

    def addCourse(self, course):
        if course.course_id > 0:
            self.allCourses.append(course)
            return True
        else:
            return False
    
    def bulkLoad(self, conn = None):
        row_counter = 0
        if Utilities.isItTest():
            with open('./../TestData/SampleCourseData.csv', 'r') as csvfile:
                read_csv = csv.reader(csvfile, delimiter=',')
                try: 
                    for row in read_csv:
                        row_counter = row_counter +1
                        if row_counter > 1:
                            course_id= row[0]
                            course_name= row[1]
                            level=row[2]
                            course = Course(course_id, course_name, level)
                            #TODO - add a null check and reset here?
                            self.allCourses.append(course)
                            lastRow = row
                        else:
                            print("RowCounter !> 1")
                except:
                    print("**{0}**".format(lastRow))
        else: 
            cur = conn.cursor()
            cur.execute("SELECT * FROM Courses")
            for (course_id, course_name, level) in cur:
                course = Course(course_id, course_name, level)
                self.allCourses.append(course)             
        return len(self.allCourses)
