*this file contains various electronic components(mainly semiconductor components)
* model

*Diodes

** taken from the datasheet
*maximum leakage current as IS, IBV is typically ten times as that of IS.
*BV is the maximum reverse breakdown voltage.
*The M coefficient is not in the datasheet, it’s a value that ranges between 0.25 and 0.45 for most of the diodes. For low voltage Zener diode we assume M = 0.25, for diodes that work on voltages from 50 to 100V M = 0.33 and for several hundred volts we can assume M = 0.45. Schottky diodes have a coefficient M, which typically varies from 0.4 to 0.5.
*The transit time TT for switching diodes of this type is a value close to 10ns. In the case of ultrafast diodes rectifiers is up to 50ns, while for a fast rectifiers up to 250ns.For Zener diodes, with voltages below 10V TT is around 200ns, while for voltages exceeding 100V is up to 3ms.
*For EG(bandgap voltage eV) we can assume the standard value of 1.1 eV, while it’s 0.7 eV for Schottky diode and 0.67 eV for germanium diodes. 
*The N value ranges between 1.0 and about 2.0.Assume N = 2.0
*ID = IS*(e^(VD/(N*Vt)) -1)

.model D1N4004 D (IS=18.8n RS=0 BV=400 IBV=5.00u CJO=30p M=0.333 N=2) 

.model D1N5711sk D (IS=315n RS=2.8 N=2.03 TT=1.44n CJO=2.00p M=0.33 IBV=10u)

.model D1N4148 D (IS=0.1PA, RS=1 CJO=2PF TT=12N BV=100 IBV=0.1PA N=2 IKF=150m
+XTI=3 EG=1.1 FC=0.5)

.model D1N4500 D (IS=57.2nA, RS=16 CJO=4PF TT=10N BV=80 IBV=1uA M=0.33 EG=1.11
+N=2.0 VJ=0.7)


*BJTs
*We begin with the parameters that can be set to their default values without significant influence on the modeling. let’s Assume XTI=3, EG=1.11 eV, XTB=0, TR=10ns, FC= 0.5
*TF=1/(2*pi*fT)
.model Q2N2222A NPN (IS=14.34F  XTI=3  EG=1.11  VAF= 74.03  BF=255.9  
+NE=1.307  ISE=14.34F  IKF=.2847  XTB=1.5  BR=6.092  NC=2  ISC=0  IKR=0  
+RC=1  CJC=7.306P  MJC=.3416  VJC=.75  FC=.5  CJE=22.01P  MJE=.377  
+VJE=.75  TR=46.91N  TF=411.1P  ITF=.6  VTF=1.7  XTF=3  RB=10)

.model Q2N696 NPN (IS=14.34F  XTI=3  EG=1.11  VAF= 74.03  BF=65.62  
+NE=1.208  ISE=19.48F  IKF=.2385  XTB=1.5  BR=9.715  NC=2  ISC=0  IKR=0  
+RC=1  CJC=9.393P MJC=.3416  VJC=.75  FC=.5  CJE=22.01P  MJE=.377  
+VJE=.75  TR=58.98N  TF=408.8P  ITF=.6  VTF=1.7  XTF=3  RB = 10)

.model QTIP29 NPN (IS=14.34F  XTI=3  EG=1.11  VAF= 74.03  BF=255.9  
+NE=1.307  ISE=14.34F  IKF=.2847  XTB=1.5  BR=6.092  NC=2  ISC=0  IKR=0  
+RC=1  CJC=7.306P  MJC=.3416  VJC=.75  FC=.5  CJE=22.01P  MJE=.377  
+VJE=.75  TR=10N  TF=53ns  ITF=.6  VTF=1.7  XTF=3  RB=10)


