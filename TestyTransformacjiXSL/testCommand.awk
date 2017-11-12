BEGIN 	{ prolog="prolog.xml"; epilog="epilog.xml"; core=we;
	  split(we, czlony, "_");
          print "We: " we;
	  coreProlog = "prolog_" czlony[1] ".xml";
	  coreEpilog = "epilog_" czlony[1] ".xml";
	  print "P: " coreProlog;
	  print "E: " coreEpilog;
	  polecenie = "copy " prolog "+" coreProlog "+" we "+" coreEpilog "+" epilog " wyjscie\\" we; 
	  print polecenie;
	  system(polecenie);
	}