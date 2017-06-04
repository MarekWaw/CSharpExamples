using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TestyJezyka
{
    public class Subject
    {
        public event EventHandler procesorZdarzen;
        public void DajZnacObserwatorowi()
        {
            if (procesorZdarzen != null)
            {
                procesorZdarzen(this, EventArgs.Empty); // Lub własny komunikat
            }
        }
    }
}
