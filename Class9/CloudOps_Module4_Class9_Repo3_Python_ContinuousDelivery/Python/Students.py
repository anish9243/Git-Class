import csv
from Student import Student
from Utilities import Utilities

class Students:
    """
    List of Student Data Objects with supporting methods
    """
    allStudents = []

    def addStudent(self, student):
        """
        Add one student
        """
        if student.student_id > 0:
            self.allStudents.append(student)
            return True
        else:
            return False

    def bulkLoad(self, conn = None):
        """
        Add multiple students
        """
        rowCounter = 0
        if Utilities.isItTest():
            with open('./../TestData/SampleStudentData.csv', 'r') as csvfile:
                readCSV = csv.reader(csvfile, delimiter=',')
                try:
                    for row in readCSV:
                        rowCounter = rowCounter +1
                        if rowCounter > 1:
                            student_id= row[0]
                            first_name= row[1]
                            surname=row[2]
                            date_of_birth=row[3]
                            student = Student(student_id, first_name, surname, date_of_birth)
                            self.allStudents.append(student)
                            lastRow = row
                        else:
                            print("RowCounter !> 1")
                except:
                    print("**{0}**".format(lastRow))
        else:
            cur = conn.cursor()
            cur.execute("SELECT * FROM Students")
            for (student_ID, first_Name, surname, date_of_birth) in cur:
                student = Student(student_ID, first_Name, surname, date_of_birth)
                self.allStudents.append(student)
        return len(self.allStudents)


