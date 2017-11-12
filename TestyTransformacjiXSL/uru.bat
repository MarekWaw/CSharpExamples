rem rm epilog.xml prolog.xml trades.xml
awk -v wyHead="prolog.xml" -v we="dane.xml" -v wyFoot="epilog.xml" -v wyTrades="trades.xml" -f prolog.awk 
