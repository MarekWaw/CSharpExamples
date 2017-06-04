using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TestyJezyka
{
    public class Observer
    {
        Subject obiekt;
        public Observer(Subject obiekt)
        {
            this.obiekt = obiekt;
        }
        public void Subskrybuj()
        {
            obiekt.procesorZdarzen += ZrobCos;
        }
        public void Rezygnuj()
        {
            obiekt.procesorZdarzen -= ZrobCos;
        }
        private void ZrobCos(object sender, EventArgs e)
        {
            Console.WriteLine("Notyfikacja z obiektu");
        }
    }
}
