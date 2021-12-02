using System;
using System.Collections.Generic;

namespace DataTypes
{
    class Program
    {
        static void Main(string[] args)
        {
            string text = "This is a string";
            int age = 35;
            DateTime now = DateTime.Now;

            double amount = 0;

            string string2 = text + " a second string " + age + now + amount;

            string string3 = string.Format("The age is {0}, the time is {1}, and amount is {2}", age, now, amount);

            string string4 = $"The age is {age}, the time is {now}, and amount is {amount}";

            char sampleChar = 'C';
            char[] arrayChar = string4.ToCharArray();

            amount = (double)10 / (double)3;

            DateTime dateTime = new DateTime(2000,1,1);

            TimeSpan timeStamp1 = dateTime - now;
            //var otherText = "this is a text";

            Console.WriteLine(timeStamp1.Milliseconds);

            string test = "15";

            string booleanValue = "True";

            bool isTrue = bool.Parse(booleanValue);

            age = int.Parse(test);


            List<Customer> customersList = new List<Customer>();
            customersList.Add(new Customer("Memo",DateTime.Parse("2011-03-21 12:20")));
            customersList.Add(new Customer("Frida", DateTime.Parse("2011-03-21 12:20")));
            customersList.Add(new Customer("Cinthia", DateTime.Parse("2011-03-21 13:00")));
            customersList.Add(new Customer("Carlota", DateTime.Parse("2012-03-21 14:00")));
            customersList.Add(new Customer("Pedro", DateTime.Parse("2012-03-21 15:00")));
            customersList.Add(new Customer("Guillermo", DateTime.Parse("2013-03-21 16:00")));
            customersList.Add(new Customer("Lalo", DateTime.Parse("2013-03-21 17:00")));
            customersList.Add(new Customer("Beto", DateTime.Parse("2014-03-21 18:00")));
            customersList.Add(new Customer("Roberto", DateTime.Parse("2014-03-21 8:00")));
            customersList.Add(new Customer("Ediberto", DateTime.Parse("2015-03-21 9:00")));

            Console.WriteLine("\nCicle foreach:");

            foreach (Customer customer in customersList)
            {
                Console.WriteLine(customer.Name + ", " + customer.Registered);
            }

            Console.WriteLine("\nCicle for:");

            for (int i = 0; i < customersList.Count; i++)
            {
                Console.WriteLine(customersList[i].Name + ", " + customersList[i].Registered);
            } 

            Console.WriteLine("\nCicle while:");

            int o = 0;
            while (o < customersList.Count)
            {
                Console.WriteLine(customersList[o].Name + ", " + customersList[o].Registered);
                o++;
            }

            Console.WriteLine("\nCicle do while:");

            o = 0;
            do
            {
                Console.WriteLine(customersList[o].Name + ", " + customersList[o].Registered);
                o++;
            } while (o < customersList.Count);

            Console.ReadKey();
        }
    }
}
