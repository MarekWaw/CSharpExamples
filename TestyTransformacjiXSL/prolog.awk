BEGIN 	{ daneWyH = wyHead;  
          daneWe = we;
	      daneWyF = wyFoot; 
          daneTrades = wyTrades;
       	  while (( getline line < daneWe ) > 0) {
		  print line >> daneWyH;
                if (line ~/<segments/) 
                    break;
          }
       	  while (( getline line < daneWe ) > 0) {
                if (line ~/<\/segments/) {
                    print line >> daneWyF;
                    break;
                }
                else {
                    print line >> daneTrades;
                }
          }
       	  while (( getline line < daneWe ) > 0) {
		        print line >> daneWyF;
          }
          close(daneWyF);
          close(daneWyH);
          print "Koniec"
	}