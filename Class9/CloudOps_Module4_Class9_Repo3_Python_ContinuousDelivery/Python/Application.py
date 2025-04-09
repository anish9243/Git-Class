from MariaDBConnect import MariaDBConnect
from Students import Students
from Grades import Grades
from Enrollments import Enrollments
from Courses import Courses
from EnrollmentHelper import EnrollmentHelper
from GradingHelper import GradingHelper
from flask import Flask, jsonify, request


app = Flask(__name__)

mariaDBConnect = MariaDBConnect()
conn = mariaDBConnect.createConnection()

students = Students()
grades = Grades()
enrollments = Enrollments()
courses = Courses()

students.bulkLoad(conn)
grades.bulkLoad(conn)
enrollments.bulkLoad(conn)
courses.bulkLoad(conn)

enrollmentHelper = EnrollmentHelper(enrollments, students)
gradingHelper = GradingHelper(grades, courses, enrollments)


studentGrades = gradingHelper.listGradesByStudentID(2)

#for grade in studentGrades:
#    print (grade[0], grade[1])

@app.route('/listStudentsByCourseID', methods=['GET'])
def get_listStudentsByCourseID_response():
    course_ID = request.args.get('course_ID')
    print(course_ID)
    listOfStudents = enrollmentHelper.listStudentsByCourseID(int(course_ID))

    return jsonify({"response": listOfStudents})

if __name__ == '__main__':
    app.run(debug=True)
