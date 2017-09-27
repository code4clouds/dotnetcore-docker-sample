using System;
using System.Globalization;
using System.Threading;

namespace standalone_demo
{
    class Program
    {
        
        static void Main(string[] args)
        {
            Console.WriteLine("Hello .NET Core World!");
            Console.WriteLine(string.Format("The current time is: {0}", DateTime.UtcNow));
        }
    }   
}
