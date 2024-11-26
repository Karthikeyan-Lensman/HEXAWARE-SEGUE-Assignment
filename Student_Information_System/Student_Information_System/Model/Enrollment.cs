namespace Student_Information_System.Model
{
    internal class Enrollment
    {
        public int EnrollmentId { get; set; }
        public int StudentId { get; set; }
        public int CourseId { get; set; }
        public DateTime EnrollmentDate { get; set; }

        // Constructor
        public Enrollment(int enrollmentId, int studentId, int courseId, DateTime enrollmentDate)
        {
            EnrollmentId = enrollmentId;
            StudentId = studentId;
            CourseId = courseId;
            EnrollmentDate = enrollmentDate;
        }
    }
}
