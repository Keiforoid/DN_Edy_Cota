using Linq.Examples.Entities;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Linq.Examples
{
    class Program
    {
        static IList<Student> studentList = new List<Student>()
        {
            new Student(){ StudenID = 1, StudentName = "John", Age = 18, StandardID =1},
            new Student(){ StudenID = 2, StudentName = "Steve", Age = 21, StandardID =1},
            new Student(){ StudenID = 3, StudentName = "Bill", Age = 18, StandardID =2},
            new Student(){ StudenID = 4, StudentName = "Ram", Age = 20, StandardID =2},
            new Student(){ StudenID = 5, StudentName = "Ron", Age = 21},
            
            new Student(){ StudenID = 6, StudentName = "Morty", Age = 14}
        };

        static IList<Standard> standardList = new List<Standard>()
        {
            new Standard(){ StandardID = 1, StandardName = "Standard 1"},
            new Standard(){ StandardID = 2, StandardName = "Standard 2"},
            new Standard(){ StandardID = 3, StandardName = "Standard 3"},
        };


        static void Main(string[] args)
        {
            var test = studentList
                .Where(x => (x.Age >= 18 && x.StandardID > 0))
                .Select(x=>x.StudentName);

            var teenStudentsName = from s in studentList
                                   where s.Age > 12 && s.Age < 20
                                   select new { StudentName = s.StudentName };

            var studentsGroupNyStandard = from s in studentList
                                          where s.Age > 12 && s.Age < 20
                                          group s by s.StandardID into sg
                                          orderby sg.Key
                                          select new { 
                                              StandardID = sg.Key, 
                                              Items = sg 
                                          };

            var studentWithStandard = from s in studentList
                                      join stad in standardList
                                      on s.StandardID equals stad.StandardID
                                      select new
                                      {
                                          StudentName = s.StudentName,
                                          StandardName = stad.StandardName
                                      };


            foreach (var element in studentWithStandard)
            {
                Console.WriteLine($"Student: {element.StudentName} is in {element.StandardName}");
            }
            

            Console.ReadKey();
        }
    }
}
