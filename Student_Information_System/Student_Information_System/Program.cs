using Student_Information_System.Model;
namespace Student_Information_System
{
    internal class Program
    {
        static void Main(string[] args)
        {

            #region TASK 1

            //Console.WriteLine("Enter your name: ");
            //string name = Console.ReadLine();

            //Console.WriteLine("Enter your GPA: ");
            //decimal gpa = Convert.ToDecimal(Console.ReadLine());

            //Console.WriteLine("Enter How many events you have Participated: ");
            //int events = Convert.ToInt32(Console.ReadLine());

            //if (gpa > 3.5m && events > 2)
            //{
            //    Console.WriteLine("You're eligible for the Scholarship");
            //}
            //else
            //{
            //    Console.WriteLine("Your're not eligible for the Scholarship");
            //}

            #endregion

            #region TASK 2

            //    string[] available_Courses = { "Tamil", "Science", "History", "English", "Maths" };
            //    string[] enrolled_Courses = new string[4];
            //    int count = 0;
            //    int maxCourses = 4;

            //    while (true)
            //    {
            //        Console.WriteLine("1. Check Available Courses");
            //        Console.WriteLine("2. Enroll in Course");
            //        Console.WriteLine("3. Drop Course");
            //        Console.WriteLine("4. View Enrolled Courses");
            //        Console.WriteLine("5. Exit");
            //        Console.WriteLine("Enter your choice: ");
            //        int choice = Convert.ToInt32(Console.ReadLine());

            //        switch (choice)
            //        {
            //            case 1:
            //                Console.WriteLine("Available Courses:");
            //                for (int i = 0; i < available_Courses.Length; i++)
            //                {
            //                    Console.Write(available_Courses[i] + " ");
            //                }
            //                break;

            //            case 2:
            //                if (count >= maxCourses)
            //                {
            //                    Console.WriteLine("You cannot enroll in more than 4 courses.");
            //                }
            //                else
            //                {
            //                    Console.WriteLine("Available Courses:");
            //                    for (int i = 0; i < available_Courses.Length; i++)
            //                    {
            //                        Console.Write(available_Courses[i] + " ");
            //                    }
            //                    Console.WriteLine("Enter the course name to enroll: ");
            //                    string courseToEnroll = Console.ReadLine();

            //                    bool isCourseAvailable = false;
            //                    for (int i = 0; i < available_Courses.Length; i++)
            //                    {
            //                        if (available_Courses[i] == courseToEnroll)
            //                        {
            //                            isCourseAvailable = true;
            //                            break;
            //                        }
            //                    }

            //                    bool isAlreadyEnrolled = false;
            //                    for (int i = 0; i < count; i++)
            //                    {
            //                        if (enrolled_Courses[i].Equals(courseToEnroll))
            //                        {
            //                            isAlreadyEnrolled = true;
            //                            break;
            //                        }
            //                    }

            //                    if (isAlreadyEnrolled)
            //                    {
            //                        Console.WriteLine("You are already enrolled in " + courseToEnroll + ".");
            //                    }
            //                    else if (!isCourseAvailable)
            //                    {
            //                        Console.WriteLine("Course not available or invalid input.");
            //                    }
            //                    else
            //                    {
            //                        enrolled_Courses[count] = courseToEnroll;
            //                        count++;
            //                        Console.WriteLine("Successfully enrolled in " + courseToEnroll);
            //                    }
            //                }
            //                break;

            //            case 3:
            //                if (count == 0)
            //                {
            //                    Console.WriteLine("You are not enrolled in any courses to drop.");
            //                }
            //                else
            //                {

            //                }

            //                break;

            //            case 4:
            //                Console.WriteLine("Your Enrolled Courses:");
            //                if (enrolled_Courses.Length == 0)
            //                {
            //                    Console.WriteLine("No courses enrolled yet.");
            //                }
            //                else
            //                {
            //                    for (int i = 0; i < enrolled_Courses.Length; i++)
            //                    {
            //                        Console.WriteLine("- " + enrolled_Courses[i]);
            //                    }
            //                }
            //                break;

            //            case 5:
            //                Console.WriteLine("Exiting the system. Goodbye!");
            //                return;

            //            default:
            //                Console.WriteLine("Invalid choice. Please try again.");
            //                break;
            //        }
            //    }

            #endregion

            #region TASK 3

            //string[] studentIDs = { "101", "102", "103", "104" };
            //string[] studentGrades = { "A", "B", "C", "A" };

            //while (true)
            //{
            //    Console.WriteLine("Enter your Student ID: ");
            //    string inputID = Console.ReadLine();

            //    bool isValidID = false;
            //    int index = 0;
            //    for (int i = 0; i < studentIDs.Length; i++)
            //    {
            //        if (studentIDs[i] == inputID)
            //        {
            //            isValidID = true;
            //            index = i;
            //            break;
            //        }
            //    }

            //    if (isValidID)
            //    {
            //        Console.WriteLine("Valid ID. Your grade is:" +studentGrades[index]);
            //        break; 
            //    }
            //    else
            //    {
            //        Console.WriteLine("Invalid ID. Please try again.");
            //    }
            //}

            #endregion

            //Student st = new Student();
            //st.StudentId = 1;
            //st.FirstName = "Test";
            //Student st = new Student(1, "John", "Doe", "2000-01-01", "john.doe@example.com", "1234567890");
            //st.FirstName = "Ses";
            //Console.WriteLine( st.FirstName);


            //Student st1 = new Student(1, "John", "Doe", "2000-01-01", "john.doe@example.com", "1234567890");
            //Student student = new Student();
            //student.StudentId = 1;

            #region Database Connection



            #endregion

            //Course course1 = new Course(1, "Maths", "C1", "Dr. John");
            //Course course2 = new Course(2, "Science", "C2", "Dr. Smith");

            Student student = new Student(101, "John", "Doe","16-04-2004", "johndoe@gmail.com", "9876543210");
            student.StudentId = 1;


            //student.EnrollInCourse(course1);
        }
    }
}