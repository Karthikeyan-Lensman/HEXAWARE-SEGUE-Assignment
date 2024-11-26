namespace Student_Information_System.Model
{
    internal class Course
    {
        public int CourseId { get; set; }
        public string CourseName { get; set; }
        public string CourseCode { get; set; }
        public string InstructorName { get; set; }

        public Course(int courseId, string courseName, string courseCode, string instructorName)
        {
            CourseId = courseId;
            CourseName = courseName;
            CourseCode = courseCode;
            InstructorName = instructorName;
        }
    }
}
