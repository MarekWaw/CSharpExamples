BEGIN 	{ daneWe = we; plikWy = "segments"; i = 0;
       	  while (( getline line < daneWe ) > 0) {
	        if (line ~/<segment/) {
                    i++;
                    plik = sprintf("segments0%d.xml", i);
		    plikProlog = sprintf("prolog_segments0%d.xml", i);	
		    plikEpilog = sprintf("epilog_segments0%d.xml", i);		
		    print line >>plikProlog;
		    print "<unit>" >>plikProlog;
                    print line >> plik;
                    while (( getline line < daneWe ) > 0) {
                        print line >>plik;
                        if (line ~/<\/segment/)
                            break;
                    }
		    print "</unit>" >>plikEpilog;
		    print line >>plikEpilog;
                }            
          }
 	}