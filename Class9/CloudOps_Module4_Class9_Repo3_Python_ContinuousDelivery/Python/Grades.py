from Grade import Grade
from Utilities import Utilities
import csv


class Grades:
    
    allGrades= []

    def addGrade(self, grade):
        if grade.assignment_id > 0:
            self.allGrades.append(grade)
            return True
        else:
            return False

    
    def bulkLoad(self, conn = None):
        rowCounter = 0
        if Utilities.isItTest():
            with open('./../TestData/SampleGradeData.csv', 'r') as csvfile:
                read_csv = csv.reader(csvfile, delimiter=',')
                try: 
                    for row in read_csv:
                        rowCounter = rowCounter +1
                        if rowCounter > 1:
                            enrollment_id= row[0]
                            assignment_id= row[1]
                            mark=row[2]
                            grade = Grade(enrollment_id, assignment_id, mark)
                            #TODO - add a null check and reset here?
                            self.allGrades.append(grade)
                            lastRow = row
                        else:
                            print("RowCounter !> 1")
                except:
                    print("**{0}**".format(lastRow))
        else: 
            cur = conn.cursor()
            cur.execute("SELECT * FROM Grades")
            for (enrollment_id, assignment_id, mark) in cur:
                grade = Grade(enrollment_id, assignment_id, mark)
                self.allGrades.append(grade)            
        return len(self.allGrades)
