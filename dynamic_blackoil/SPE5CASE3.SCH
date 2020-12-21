-- This reservoir simulation deck is made available under the Open Database
-- License: http://opendatacommons.org/licenses/odbl/1.0/. Any rights in
-- individual contents of the database are licensed under the Database Contents
-- License: http://opendatacommons.org/licenses/dbcl/1.0/

--  Copyright (C) 2020 NORCE 

--  This is the dataset used for the example in:
--  T.H. Sandve, O. Sævareid and I. Aavatsmark: “Improved Extended Blackoil Formulation
--  for CO2 EOR Simulations.” in ECMOR XVII – The 17th European Conference on the
--  Mathematics of Oil Recovery,  September 2020.

RPTRST
 'BASIC=2' 
  PRESSURE  SGAS  SOIL  SWAT  XMF  YMF 
  DENG DENO DENW 
  VGAS VOIL VWAT
  RS RV BO BG BW
  KRG KRO KRW  
  PCOW PCOG
/
WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'SHUT' /
/
-- Start production for five years
TSTEP
--Advance the simulater once a month for FIVE years:
31 28 31 30 31 30 31 31 30 31 30 31
31 28 31 30 31 30 31 31 30 31 30 31 
31 28 31 30 31 30 31 31 30 31 30 31
31 28 31 30 31 30 31 31 30 31 30 31
31 28 31 30 31 30 31 31 30 31 30 31
/


-- Start water injection after 0 years
WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'OPEN' /
 'INJG' 'SHUT' /
/
TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 30.25
/

WELOPEN
 'INJW' 'SHUT' /
 'INJG' 'OPEN' /
/

TSTEP
--Advance the simulater 91.25 days 
30.5 30.5 34.25
/

-- End simulation after 20 years

END
