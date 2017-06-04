using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TestyJezyka
{
    class Program
    {
        static void Main(string[] args)
        {
            Subject obiekt = new Subject();
            Observer obserwator1 = new Observer(obiekt);
            Observer obserwator2 = new Observer(obiekt);

            obserwator1.Subskrybuj();
            obiekt.DajZnacObserwatorowi();

            Console.ReadKey();

        }
    }
}
