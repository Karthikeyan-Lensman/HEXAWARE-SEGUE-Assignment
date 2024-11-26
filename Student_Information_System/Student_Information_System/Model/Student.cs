namespace Student_Information_System.Model
{
    internal class Student
    {
        public int StudentId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string DateOfBirth { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        List<Course> Enrolled_courses {  get; set; } 

        public Student(int studentId, string firstName, string lastName, string dateOfBirth, string email, string phoneNumber)
        {
            StudentId = studentId;
            FirstName = firstName;
            LastName = lastName;
            DateOfBirth = dateOfBirth;
            Email = email;
            PhoneNumber = phoneNumber;
            Enrolled_courses = new List<Course>();
        }

        public void EnrollInCourse(Course course1)
        {

           
        }


    }
}