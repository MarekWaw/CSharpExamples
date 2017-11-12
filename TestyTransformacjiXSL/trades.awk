BEGIN 	{ daneWe = we ".xml"; i = 0;
       	  while (( getline line < daneWe ) > 0) {
		        if (line ~/<trade/) {
                    i++;
                    plik = we  sprintf("_trades0%d.xml", i);
                    print plik;
                    print line >> plik;
                    while (( getline line < daneWe ) > 0) {
                        print line >>plik;
                        if (line ~/<\/trade/)
                            break;
                    }
                }            
          }
 	}