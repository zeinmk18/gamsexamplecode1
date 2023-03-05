SETS

 sac        SAM accounts
**JL 24.02.14
 fc(sac)    commodities and factors

 c(fc)      Commodities
 cint(c)    commodities with intermediate demand
 cintn(c)   commodities with no intermediate demand

 cagr(c)    Agricultural Commodities
 cnat(c)    Natural Resource Commodities
 cfd(c)     Food Commodities
 cind(c)    Industrial Commodities
 cuti(c)    Utility Commodities

** JL
 cwat(c)    Water commodities
 ccon(c)    Construction Commodities
 cser(c)    Service Commodities
 cagg       Aggregate commodity groups
 cnwat(c)   All commodities excluding water

 m(sac)     Margins

 a(sac)     Activities
 aagr(a)    Agricultural Activities
 anat(a)    Natural Resource Activities
 afd(a)     Food Activities
 aind(a)    Industrial Activities
 auti(a)    Utility Activities
 acon(a)    Construction Activities
 aser(a)    Service Activities
 aagg       Aggregate activity groups
** JL 31.10.14
 asew(a)    Activities connected to sewer system

 anch(a)    Anchor activity for fixing 1 WFDIST in various factor closures
 anchN(a)   Anchor activity for fixing 1 WFDIST in land factor closures

** JL 21.01.14   Sets for 3. nest
 an(a)     Activities which consume land
 ann(a)    Activities which do not consume land

** JL 15.10.12    Sets for 4. nest
 acwat(a)    Activities which consume some water commodities
 ancwat(a)   Activities which do not consume any water commodities
** JL 17.12.13
 afwat(a)    Activities which consume water factors
 anfwat(a)   Activities which do not consume water factors

 awat(a)     Activities which consume water(either factors or commodities)
 anwat(a)    Activities which do not consume water(neither factors nor com.)

 aleon(a)    Activities with Leontief prodn function at Level 1
** JL 25.11.11
 aleon2(a)   Activities with Leontief prodn function at value added side at L. 2
**JL 29.11.13
 aleon3(a)   Activities with Leontief prodn function at Level 3
** JL 17.12.13
 aleon4(a)   Activities with Leontief prodn function at Level 4

 f(fc)      Factors
 l(f)       Labour Factors
 ls(l)      Skilled Labour Factors
 lm(l)      Skilled or Unskilled Labour Factors
 lu(l)      Unskilled Labour Factors
 k(f)       Capital Factors
 n(f)       Land factors
 wat(f)     Water factors
**JL 01.05.14
 sew(f)     Sewage factors

 f2(f)      Factors to enter QVA nest
 f3(f)      Factors to enter water-land aggregate-nest
 f4(f)      Factors to enter water nest (4. nest)

 h(sac)     Households
 g(sac)     Government
 gt(g)      Government tax accounts
 tff(g)     factor tax account used in GDX program

** JL 4.6.12
 tw(g)      Water use tax on activities

 e(sac)     Enterprises
** JL 01.05.14
 ecom(e)    Commercial enterprises
 esoc(e)    Social enterprises and pensions

 i(sac)     Investment

 w(sac)     Rest of the world

 ppn        population
 


* Mapping sets


 map_f_tff(f,tff)    Factor taxes to factors
 map_tff_f(tff,f)    Factor taxes to factors reverse

 map_aagg_a(aagg,a)  Mapping from activies to aggregate activities
 map_cagg_c(cagg,c)  Mapping from commodities to aggregate commodities

**JL 4.6.12
 map_c_tw(c,tw)      Mapping water commodities to water taxes
 map_tw_c(tw,c)      Mapping water taxes to water commodies

* Declaring SETS that will be assigned from the data

 ce(c)         Export commodities
 cen(c)        Non-export commodities

 ced(c)        Export commodities with export demand functions
 cedn(c)       Export commodities without export demand functions

 cm(c)         Imported commodities
 cmn(c)        Non-imported commodities

 cx(c)         Commodities produced domestically
 cxn(c)        Commodities NOT produced domestically AND imported

 cxac(c)       Commodities that are differentiated by activity
 cxacn(c)      Commodities that are NOT differentiated by activity

 cd(c)         Commodities produced and demanded domestically
 cdn(c)        Commodities NOT produced and demanded domestically

 aqx(a)        Activities with CES aggregation function at Level 1 of nest
 aqxn(a)       Activities with Leontief aggregation function at Level 1 of nest

** JL 25.11.11

 afx(a)        Activities with CES function at value added side of L. 2
 afxn(a)       Activities with Leontief function at value added side od L. 2

** JL 29.11.13

 af3x(a)       Activities with CES aggregation function at Level 3 of nest
 af3xn(a)      Activities with Leontief aggregation function at Level 3 of nest

** JL 17.12.13

 af4x(a)       Activities with CES aggregation function at Level 4 of nest
 af4xn(a)      Activities with Leontief aggregation function at Level 4 of nest



* Declaring other sets


 sacn(sac)  SAM accounts excluding TOTAL

 ss         ASAM categories
 ssn(ss)    ASAM excluding totals

* Set used to control model flow

 fcons      set for parameters controlling program flow
 mcons      set for parameters controlling model content
 


    ;

* Setting up ALIASES

 ALIAS(sac,sacp), (sacn,sacnp),
      (c,cp), (cagr,cagrp), (cnat,cnatp), (cfd,cfdp), (cind,cindp),
      (cuti,cutip), (ccon,cconp), (cser,cserp),
      (m,mp),
      (a,ap), (aagr,aagrp), (anat,anatp), (afd,afdp), (aind,aindp),
      (auti,autip), (acon,aconp), (aser,aserp),
      (f,fp), (l,lp), (ls,lsp), (lm,lmp), (lu,lup), (k,kp), (n,np),
      (h,hp), (e,ep), (g,gp), (gt,gtp), (tff,tffp), (i,ip), (w,wp),
      (ce,cep), (ced,cedp), (cm,cmp), (cx,cxp), (cxac,cxacp), (cd,cdp),
      (ss,ssp), (ssn,ssnp) ,
** KJ
      (cwat,cwatp), (wat,watp),(tw,twp)

** JL 11.10.12
      (f2,f2p)
** JL 29.11.13
      (f3,f3p)
** JL 17.12.13
       (f4,f4p)

;

PARAMETER


* Data parameters
 SAM(SAC,SACP)          the SAM for this model
 FACTUSE(f,a)           Factor use by activity
** JL 28.11.11
 WATUSE(c,*)            Wateruse quatities
 watprice(cwat)         Base water prices

**JL 20.01.15
 shsewmun0(cwat,sac)    Sewage "produced" by municipalities as share of water cons.
 shsews0                Share of sewage collected in central sewer system
 shsewl0                Share of sewage lost during treatment


 facthhold(h,f)         Factor use supplied by household
 popn(h,ppn)            Population data using various measures
 pop(h)                 Population data used in model

 ELASTC(c,*)            Trade Elasticities indexed on commodities
 ELASTX(a,*)            Production Elasticities indexed on activities
 ELASTY(c,h)            Income Demand Elasticities for households
 ELASTMU(h,*)           Elasticity of the MU of income

* Data scaling parameters

 samscal                algorithm performance scaling parameter for SAM
 factscal               algorithm performance scaling parameter for FACTUSE

** JL 08.12.11
 watscal                algorithm performance scaling parameter for WATUSE

* Parameters used to control model flow

 flow_cont(fcons)       values for parameters controlling program flow
 mod_cont(mcons)        values for parameters controlling model content


$CALL "GDXXRW i=STAGE_W_LEB_data.xls o=data_in.gdx index=Layout!A4"

*---- 1b. All data, elasticities and sets from excel are assigned here

$GDXIN data_in.gdx

$LOAD sac fc
$LOAD c cagr cnat cfd cind cuti cwat ccon cser cagg
$LOAD m
$LOAD a aagr anat afd aind auti acon aser aagg anch anchN aleon aleon2 aleon3 aleon4
$LOAD f f2 f3 f4 l ls lm k n wat sew
$LOAD h asew
$LOAD g gt tff tw
$LOAD e ecom esoc
$LOAD i
$LOAD w
$LOAD ss
$LOAD ppn

$LOAD mcons fcons

$LOAD map_f_tff map_tff_f map_c_tw map_tw_c

$GDXIN

* 1bi. Loading a SAM from Excel via GDX

$GDXIN data_in.gdx

* Transactions and factor data
$LOAD sam factuse popn

** JL 28.11.11
* water satellite account sheet "watuse"
$LOAD watuse
$LOAD watprice

** JL 20.01.15
* sheet "recycling"

$LOAD SHSEWMUN0
$LOAD SHSEWS0
$LOAD shsewl0


* Elasticities data
$LOAD elastc elastx elasty elastmu

* Control data
$LOAD  flow_cont mod_cont

$GDXIN

* Initialise empty parameters

* (currently none)

* 1bii. Loading a SAM and data from GDX
* If the SAM is a gdx file it can be read in here - NOT a preferred option

$ontext
$GDXIN SAMeg.gdx

$LOAD sam factuse popn

$GDXIN
$offtext

*---- 1c. Defining SETS by exclusions from previously defined SETS

* SAM Accounts excluding totals
 sacn(sac)      = YES ;
 sacn("total")  = NO ;

* ASAM Accounts excluding totals

 ssn(ss)        = YES ;
 ssn("totals")  = NO ;

*---- 1d. Defining MAPPING SETS by using subset information

* Mapping from commodities to aggregate commodities

 map_cagg_c("cagr",c)$(cagr(c))     = YES ;
 map_cagg_c("cnat",c)$(cnat(c))     = YES ;
 map_cagg_c("cfd",c)$(cfd(c))       = YES ;
 map_cagg_c("cind",c)$(cind(c))     = YES ;
 map_cagg_c("cuti",c)$(cuti(c))     = YES ;
** JL
 map_cagg_c("cwat",c)$(cwat(c))     = YES ;

 map_cagg_c("ccon",c)$(ccon(c))     = YES ;
 map_cagg_c("cser",c)$(cser(c))     = YES ;



* Mapping from activies to aggregate activities
 map_aagg_a("aagr",a)$(aagr(a))     = YES ;
 map_aagg_a("anat",a)$(anat(a))     = YES ;
 map_aagg_a("afd",a)$(afd(a))       = YES ;
 map_aagg_a("aind",a)$(aind(a))     = YES ;
 map_aagg_a("auti",a)$(auti(a))     = YES ;
 map_aagg_a("acon",a)$(acon(a))     = YES ;
 map_aagg_a("aser",a)$(aser(a))     = YES ;


Display map_cagg_c, map_aagg_a, watprice;

*---- 1d. Initial SAM check

* Perform an initial SAM totals check

PARAMETER
 TOTALSCHK         Check that row and column totals are equal ;

 TOTALSCHK    = SUM(sacn,(ABS(SUM(sacnp , SAM(sacn, sacnp))
                    - SUM(sacnp , SAM(sacnp, sacn))))) ;

ABORT $(TOTALSCHK GT 0.000005) "Totals Check failed for BASE SAM" ;

*#### 2. DATA ADJUSTMENTS SECTION ########

*---- 2a. Standard SAM adjustments
* Adjusting the SAM to avoid common problems that do not affect model

* Eliminating transactions between accounts and themselves

 SAM(sac,sac)        = 0 ;

* Net transactions between domestic institutions and ROW

 SAM(h,w)            = SAM(h,w) - SAM(w,h) ;
 SAM(w,h)            = 0 ;
 SAM(e,w)            = SAM(e,w) - SAM(w,e) ;
 SAM(w,e)            = 0 ;
 SAM(g,w)            = SAM(g,w) - SAM(w,g) ;
 SAM(w,g)            = 0 ;
 SAM("kap",w)        = SAM("kap",w) - SAM(w,"kap") ;
 SAM(w,"kap")        = 0 ;
 SAM("dstoc",w)      = SAM("dstoc",w) - SAM(w,"dstoc") ;
 SAM(w,"dstoc")      = 0 ;

* Net transfers between domestic non-govt institutions and govt
**ZK Check if this (h,govt) condition is necessary; if not this should be off
 
 SAM(h,"govt")       = SAM(h,"govt") - SAM("govt",h) ;
 SAM("govt",h)       = 0 ;

 SAM(e,"govt")       = SAM(e,"govt") - SAM("govt",e) ;
 SAM("govt",e)       = 0 ;

*---- 2b. Data-specific SAM adjustments


*---- 3a. Automatic Scaling of SAM

$ontext
AUTOMATIC CALCULATING OF A SCALING FACTOR - samscal

This instruction works by successively increasing the samscal parameter as
multiples of 10 WHILE a given proportion - mod_cont("scalprop") - of the
SAM entries are below a given target - mod_cont("scaltarg").

The conditional statement is computed as follows
Denominator - the total number of non zero cells in the SAM(sacn,sacnp)
Numerator - the total number of cells in SAM(sacn,sacnp) that are
            i)  non zero cells; AND
            ii) whose absolute values when divided by the current value of
                samscal are less that the target.

The ABORT statement protects against illegal values of scaltarg
$offtext

* Assigning values to initialise scaling parameter

 samscal            = mod_cont("samscal") ;

 ABORT $(mod_cont("scaltarg") LE 0.0)
 "samautoscaltarg is less than or equal to ZERO - set to positive value" ;

WHILE(
 ((SUM((sacn,sacnp)$(SAM(sacn,sacnp)
            AND (ABS(SAM(sacn,sacnp)/samscal)
              < mod_cont("scaltarg"))),1))
        /SUM((sacn,sacnp)$SAM(sacn,sacnp), 1)) < mod_cont("scalprop") ,

*     samscal is increased in multiples of 10 until the condition is satisfied
      samscal = samscal * 10;
  ) ;

* Scale the SAM data for algorithm performance
 SAM(sac,sacp)  = SAM(sac,sacp)/samscal ;



*---- 3b. Entering and Scaling of FACTUSE

* Remove factuse where there is no corresponding SAM payment
 factuse(f,a)$(not sam(f,a)) = 0 ;

* Declare factuse from SAM if neccessary

 factuse(f,a)$((NOT factuse(f,a)) AND sam(f,a)) =   sam(f,a) ;

* By default set factor use scaling factor equal to SAM scaling factor

 factscal       = samscal ;

 FACTUSE(f,a)   = FACTUSE(f,a)/factscal ;

** JL 8.12.11
* the same for watuse
* activities

watuse(c,sac)$(cwat(c) and not SAM(c,sac))                = 0;

watscal                                              = samscal;
WATUSE(c,sac)                                       = watuse(c,sac)/watscal;
watuse(c,sac)$(cwat(c) and not watuse(c,sac) and SAM(c,sac))   = SAM(c,sac);



*---- 3c. Population data
* Population data - select measure of population here

* pophaeq  - adult equivalents measure of population
* pophh  - simple total measure of population

If(mod_cont("setpop") =1,

 pop(h)       = popn(h,"pophh") ;

  ) ;

If(mod_cont("setpop") =2,

 pop(h)       = popn(h,"pophaeq") ;

  ) ;

* Scale population data in line with factor use data

 pop(h)         = pop(h)/factscal ;

*---- 3d. Recalculating Account TOTALS, including grand total

 SAM("TOTAL",sac)    = SUM(sacn, SAM(sacn,sac));
 SAM(sac,"TOTAL")    = SUM(sacn, SAM(sac,sacn));

*#### 4. FINAL CHECK ON MODEL DATA ########

* Recompute SAM account totals

 SAM(sacn,"TOTAL")      = 0.0 ;
 SAM("TOTAL",sacn)      = 0.0 ;

 SAM(sacn,"TOTAL")      = SUM(sacnp, SAM(sacn,sacnp)) ;
 SAM("TOTAL",sacnp)     = SUM(sacn, SAM(sacn,sacnp)) ;

* Perform a SAM totals check after adjustments

 TOTALSCHK    = SUM(sacn,(ABS(SUM(sacnp , SAM(sacn, sacnp))
                    - SUM(sacnp , SAM(sacnp, sacn))))) ;

PARAMETER
 totchkz(sac)    check on total differences by account ;

 totchkz(sacn)   = SAM(sacn,"total") - SAM("total",sacn) ;

Display totchkz ;


DISPLAY TOTALSCHK ;
DISPLAY SAM, FACTUSE, pop, watuse, shsewmun0 , shsews0, shsewl0;


execute_unload 'SAMCHK.gdx' SAM ;

ABORT $(TOTALSCHK GT 0.0000005)
                  "Totals Check failed - Check SAM after adjustments" ;




*#### 5. OTHER SET ASSIGNMENTS ########

*---- 5a. Assign set members for unskilled labour by exclusion

 lu(l)          = (NOT ls(l)) AND (NOT lm(l));

*---- 5b. Defining sets to control production nesting structure

$ontext

  The set aqxn(a) - activities with Leontief at the top level is set as
     the complement to aqx(a,r)

Selecting aqx
 a) All activities WITH intermediate inputs where intermediates account
    for more than the value share set in Excel worksheet 'controls'
    are assigned to aqx.
 b) Selected members of a in aqx are cancelled - use the set aleon.
 c) Other members of a in aqx are cancelled manually.

Setting aqxn
    Defined as the complement to aqx.

$offtext


* Top level CES chosen by reference to intermediate input shares

 aqx(a)$((SUM(c,SAM(c,a))/SAM("total",a)) GT mod_cont("minaqxsh") )
                 = YES $SAM("total",a) ;


* Top level CES canceled for selected activities

 aqx(aleon)       = NO ;

* Top level CES canceled for selected activities manually

* aqx("amines")   = NO ;

* Top level Leontief set for all activities without top level CES

 aqxn(a)         = not aqx(a) ;

* CES or Leontief on 2. Level of production
* defining afx
afx(a)           = YES $SAM("total",a) ;
afx(aleon2)      = NO;
afxn(a)          = not afx(a);

* CES or Leontief on 3. Level of production
* defining af3x

af3x(a)           = YES $SAM("total",a) ;
af3x(aleon3)      = NO;
af3xn(a)          = not af3x(a);

**JL 17.12.13
* CES or Leontief on 4. Level of production
* defining af3x

af4x(a)           = YES $SAM("total",a) ;
af4x(aleon4)      = NO;
af4xn(a)          = not af4x(a);



*---- 5c. Defining sets to control aggregation commodities

* Linear aggregation of homogenous commodities

* cxac(c)         = YES ;
* cxac(cagr)      = NO ;

* cxacn(c)        = not cxac(c) ;

*#### 6. OTHER ELASTICITY ASSIGNMENTS ########

$ontext
NB: If the values for elasticities of substitution and/or transformation
    are set here they OVERRIDE the values set in the Excel database.
$offtext

*---- 6a. Defining elasticities for export demand

*Syntax example
* elastc("cmines","exdem")    = 0.5 ;



*---- 6b. Elasticities for commodity output

*Syntax example
* elastc("cmines","sigmaxc")    = 0.5 ;


*-------------------- end of stage_w data load file -------------------------


 cint(c)$(SUM(a,SAM(c,a)))     = YES ;
 cintn(c)                      = NOT cint(c);

 ce(c)$(SAM(c,"ROW"))          = YES ;
 cen(c)                        = NOT ce(c) ;

 ELASTC(c,"exdem")$(NOT ELASTC(c,"exdem")) =   0.0 ;

 ced(c)$(ELASTC(c,"exdem"))    = YES ;
 cedn(c)                       = NOT ced(c) ;

 cm(c)$(SAM("ROW",c))          = YES ;
 cmn(c)                        = NOT cm(c);

 cx(c)$(SUM(a,SAM(a,c)))       = YES ;
 cxn(c)                        = NOT cx(c) ;

 ELASTC(c,"sigmaxc")$(NOT ELASTC(c,"sigmaxc")) =   0.0 ;

 cxac(c)$ELASTC(c,"sigmaxc")   = YES ;
 cxacn(c)                      = NOT cxac(c) ;

 cd(c)$(SUM(a,SAM(a,c)) GT (SAM(c,"ROW") - SAM("EXPTAX",c)))
                               = YES ;
 cdn(c)                        = NOT cd(c) ;

** JL
 cnwat(c)                      = NOT cwat(c);

 acwat(a)                      = YES$SUM(c$cwat(c), SAM(c,a)) ;
 ancwat(a)                     = NOT acwat(a) ;

** JL 21.01.14
 an(a)                         = YES$SUM(f3,SAM(f3,a)) ;
 ann(a)                        = NOT an(a) ;

** JL 17.12.13
 afwat(a)                      = YES$SUM(f4,SAM(f4,a)) ;
 anfwat(a)                     = NOT afwat(a);

** JL 12.02.14
 awat(a)                      = YES$SUM(c$cwat(c),SAM(c,a))or SUM(f4,SAM(f4,a));
 anwat(a)                     = NOT awat(a) ;

DISPLAY cint, cintn, ce, cen, ced, cedn, cm, cmn, cx, cxn, cxac, cxacn,
        cwat, cnwat, acwat, ancwat, an, ann, afwat, anfwat,
        awat,anwat,aqx, aqxn ;

* ------- Displaying loaded data and sets -------------------------------

 DISPLAY SAM, WATUSE,FACTUSE, pop,
         ELASTC, ELASTX, ELASTY, ELASTMU,
         mod_cont, flow_cont,
         samscal, factscal,watscal
   ;

 DISPLAY sac, fc ,
         c, cagr, cnat, cfd, cind, cuti, cwat, ccon, cser, cagg,
         m,
         a, aagr, anat, afd, aind, auti, acon, aser, aagg, anch, anchN,
         afx, afxn, af3x, af3xn, af4x, af4xn,
         f, l, ls, lm, lu, k, n,
         h, g, gt, tff, e, i, w,
** JL
         wat,  tw, f2, f3, f4, sew , asew,
* other sets
         sacn, ss, ssn,
* sets for flow control
         mcons, fcons,
* mapping sets
         map_f_tff, map_tff_f,  map_aagg_a, map_cagg_c  ,map_c_tw, map_tw_c

  ;
  
PARAMETERS

* Macro SAM for checking calibration and initial solve

 ASAM0(ss,ss)   Aggregate SAM for data entry check
 ASAM1(ss,ss)   Macro Social Accounting Matrix for calibration
 ASAM2(ss,ss)   Macro Social Accounting Matrix for model equations      ;

* Macro SAM to check data entry

 ASAM0("COMMDTY","COMMDTY")   = SUM((c,cp),SAM(c,cp)) ;
 ASAM0("COMMDTY","ACTIVITY")  = SUM((c,a),SAM(c,a)) ;
 ASAM0("COMMDTY","VALUAD")    = SUM((c,f),SAM(c,f)) ;
 ASAM0("COMMDTY","HHOLDS")    = SUM((c,h),SAM(c,h)) ;
 ASAM0("COMMDTY","ENTP")      = SUM((c,e),SAM(c,e)) ;
 ASAM0("COMMDTY","GOVTN")     = SUM((c,g),SAM(c,g)) ;
 ASAM0("COMMDTY","KAPITAL")   = SUM((c,i),SAM(c,i)) ;
 ASAM0("COMMDTY","WORLD")     = SUM((c,w),SAM(c,w)) ;

 ASAM0("ACTIVITY","COMMDTY")  = SUM((a,c),SAM(a,c)) ;
 ASAM0("ACTIVITY","ACTIVITY") = SUM((a,ap),SAM(a,ap)) ;
 ASAM0("ACTIVITY","VALUAD")   = SUM((a,f),SAM(a,f)) ;
 ASAM0("ACTIVITY","HHOLDS")   = SUM((a,h),SAM(a,h)) ;
 ASAM0("ACTIVITY","ENTP")     = SUM((a,e),SAM(a,e)) ;
 ASAM0("ACTIVITY","GOVTN")    = SUM((a,g),SAM(a,g)) ;
 ASAM0("ACTIVITY","KAPITAL")  = SUM((a,i),SAM(a,i)) ;
 ASAM0("ACTIVITY","WORLD")    = SUM((a,w),SAM(a,w)) ;

 ASAM0("VALUAD","COMMDTY")    = SUM((f,c),SAM(f,c)) ;
 ASAM0("VALUAD","ACTIVITY")   = SUM((f,a),SAM(f,a)) ;
 ASAM0("VALUAD","VALUAD")     = SUM((f,fp),SAM(f,fp)) ;
 ASAM0("VALUAD","HHOLDS")     = SUM((f,h),SAM(f,h)) ;
 ASAM0("VALUAD","ENTP")       = SUM((f,e),SAM(f,e)) ;
 ASAM0("VALUAD","GOVTN")      = SUM((f,g),SAM(f,g)) ;
 ASAM0("VALUAD","KAPITAL")    = SUM((f,i),SAM(f,i)) ;
 ASAM0("VALUAD","WORLD")      = SUM((f,w),SAM(f,w)) ;

 ASAM0("HHOLDS","COMMDTY")    = SUM((h,c),SAM(h,c)) ;
 ASAM0("HHOLDS","ACTIVITY")   = SUM((h,a),SAM(h,a)) ;
 ASAM0("HHOLDS","VALUAD")     = SUM((h,f),SAM(h,f)) ;
 ASAM0("HHOLDS","HHOLDS")     = SUM((h,hp),SAM(h,hp)) ;
 ASAM0("HHOLDS","ENTP")       = SUM((h,e),SAM(h,e)) ;
 ASAM0("HHOLDS","GOVTN")      = SUM((h,g),SAM(h,g)) ;
 ASAM0("HHOLDS","KAPITAL")    = SUM((h,i),SAM(h,i)) ;
 ASAM0("HHOLDS","WORLD")      = SUM((h,w),SAM(h,w)) ;

 ASAM0("ENTP","COMMDTY")      = SUM((e,c),SAM(e,c)) ;
 ASAM0("ENTP","ACTIVITY")     = SUM((e,a),SAM(e,a)) ;
 ASAM0("ENTP","VALUAD")       = SUM((e,f),SAM(e,f)) ;
 ASAM0("ENTP","HHOLDS")       = SUM((e,hp),SAM(e,hp)) ;
 ASAM0("ENTP","ENTP")         = SUM((e,ep),SAM(e,ep)) ;
 ASAM0("ENTP","GOVTN")        = SUM((e,g),SAM(e,g)) ;
 ASAM0("ENTP","KAPITAL")      = SUM((e,i),SAM(e,i)) ;
 ASAM0("ENTP","WORLD")        = SUM((e,w),SAM(e,w)) ;

 ASAM0("GOVTN","COMMDTY")     = SUM((g,c),SAM(g,c)) ;
 ASAM0("GOVTN","ACTIVITY")    = SUM((g,a),SAM(g,a)) ;
 ASAM0("GOVTN","VALUAD")      = SUM((g,f),SAM(g,f)) ;
 ASAM0("GOVTN","HHOLDS")      = SUM((g,h),SAM(g,h)) ;
 ASAM0("GOVTN","ENTP")        = SUM((g,e),SAM(g,e)) ;
 ASAM0("GOVTN","GOVTN")       = SUM((g,gp),SAM(g,gp)) ;
 ASAM0("GOVTN","KAPITAL")     = SUM((g,i),SAM(g,i)) ;
 ASAM0("GOVTN","WORLD")       = SUM((g,w),SAM(g,w)) ;

 ASAM0("KAPITAL","COMMDTY")   = SUM((i,c),SAM(i,c)) ;
 ASAM0("KAPITAL","ACTIVITY")  = SUM((i,a),SAM(i,a)) ;
 ASAM0("KAPITAL","VALUAD")    = SUM((i,f),SAM(i,f)) ;
 ASAM0("KAPITAL","HHOLDS")    = SUM((i,h),SAM(i,h)) ;
 ASAM0("KAPITAL","ENTP")      = SUM((i,e),SAM(i,e)) ;
 ASAM0("KAPITAL","GOVTN")     = SUM((i,g),SAM(i,g)) ;
 ASAM0("KAPITAL","KAPITAL")   = SUM((i,ip),SAM(i,ip)) ;
 ASAM0("KAPITAL","WORLD")     = SUM((i,w),SAM(i,w)) ;

 ASAM0("WORLD","COMMDTY")     = SUM((w,c),SAM(w,c)) ;
 ASAM0("WORLD","ACTIVITY")    = SUM((w,a),SAM(w,a)) ;
 ASAM0("WORLD","VALUAD")      = SUM((w,f),SAM(w,f)) ;
 ASAM0("WORLD","HHOLDS")      = SUM((w,h),SAM(w,h)) ;
 ASAM0("WORLD","ENTP")        = SUM((w,e),SAM(w,e)) ;
 ASAM0("WORLD","GOVTN")       = SUM((w,g),SAM(w,g)) ;
 ASAM0("WORLD","KAPITAL")     = SUM((w,i),SAM(w,i)) ;
 ASAM0("WORLD","WORLD")       = SUM((w,wp),SAM(w,wp)) ;

 ASAM0("TOTALS",ssnp)         = SUM(ssn,ASAM0(ssn,ssnp)) ;
 ASAM0(ssn,"TOTALS")          = SUM(ssnp,ASAM0(ssn,ssnp)) ;

PARAMETER CHECK0    Differences in Row and Column totals of ASAM1  ;

CHECK0 = SUM(ssn,(ABS(ASAM0(ssn,"TOTALS")-ASAM0("TOTALS",ssn)))) ;


 ABORT $(CHECK0 GT 0.000005)
 "ASAM0 ROW AND COLUMN SUMS NOT EQUAL", CHECK0, ASAM0 ;

OPTION DECIMALS=6 ;

DISPLAY CHECK0, ASAM0 ;

*---- 2. Identifying illegal entries and aborting if present -------------

 ABORT $(ASAM0("COMMDTY","COMMDTY") NE 0.0)
 "ASAM0(COMMDTY,COMMDTY) non zero" ;

 ABORT $(ASAM0("COMMDTY","VALUAD") NE 0.0)
 "ASAM0(COMMDTY,VALUAD) non zero" ;

 ABORT $(ASAM0("COMMDTY","ENTP") NE 0.0)
 "ASAM0(COMMDTY,ENTP) non zero" ;

 ABORT $(ASAM0("ACTIVITY","ACTIVITY") NE 0.0)
 "ASAM0(ACTIVITY,ACTIVITY) non zero" ;

 ABORT $(ASAM0("ACTIVITY","VALUAD") NE 0.0)
 "ASAM0(ACTIVITY,VALUAD) non zero" ;

 ABORT $(ASAM0("ACTIVITY","HHOLDS") NE 0.0)
 "ASAM0(ACTIVITY,HHOLDS) non zero" ;

 ABORT $(ASAM0("ACTIVITY","ENTP") NE 0.0)
 "ASAM0(ACTIVITY,ENTP) non zero" ;

 ABORT $(ASAM0("ACTIVITY","GOVTN") NE 0.0)
 "ASAM0(ACTIVITY,GOVTN) non zero" ;

 ABORT $(ASAM0("ACTIVITY","KAPITAL") NE 0.0)
 "ASAM0(ACTIVITY,KAPITAL) non zero" ;

 ABORT $(ASAM0("ACTIVITY","WORLD") NE 0.0)
 "ASAM0(ACTIVITY,WORLD) non zero" ;

 ABORT $(ASAM0("VALUAD","COMMDTY") NE 0.0)
 "ASAM0(VALUAD,COMMDTY) non zero" ;

 ABORT $(ASAM0("VALUAD","VALUAD") NE 0.0)
 "ASAM0(VALUAD,VALUAD) non zero" ;

 ABORT $(ASAM0("VALUAD","HHOLDS") NE 0.0)
 "ASAM0(VALUAD,HHOLDS) non zero" ;

 ABORT $(ASAM0("VALUAD","ENTP") NE 0.0)
 "ASAM0(ENTP,HHOLDS) non zero" ;

 ABORT $(ASAM0("VALUAD","GOVTN") NE 0.0)
 "ASAM0(VALUAD,GOVTN) non zero" ;

 ABORT $(ASAM0("VALUAD","KAPITAL") NE 0.0)
 "ASAM0(VALUAD,KAPITAL) non zero" ;

 ABORT $(ASAM0("HHOLDS","COMMDTY") NE 0.0)
 "ASAM0(HHOLDS,COMMDTY) non zero" ;

 ABORT $(ASAM0("HHOLDS","ACTIVITY") NE 0.0)
 "ASAM0(HHOLDS,ACTIVITY) non zero" ;

 ABORT $(ASAM0("HHOLDS","KAPITAL") NE 0.0)
 "ASAM0(HHOLDS,KAPITAL) non zero" ;

 ABORT $(ASAM0("ENTP","COMMDTY") NE 0.0)
 "ASAM0(ENTP,COMMDTY) non zero" ;

 ABORT $(ASAM0("ENTP","ACTIVITY") NE 0.0)
 "ASAM0(ENTP,ACTIVITY) non zero" ;

 ABORT $(ASAM0("ENTP","HHOLDS") NE 0.0)
 "ASAM0(ENTP,HHOLDS) non zero" ;

 ABORT $(ASAM0("ENTP","ENTP") NE 0.0)
 "ASAM0(ENTERP,ENTERP) non zero" ;

 ABORT $(ASAM0("ENTP","KAPITAL") NE 0.0)
 "ASAM0(ENTP,KAPITAL) non zero" ;

 ABORT $(ASAM0("ENTP","WORLD") NE 0.0)
 "ASAM0(ENTP,WORLD) non zero" ;

 ABORT $(ASAM0("GOVTN","KAPITAL") NE 0.0)
 "ASAM0(GOVTN,KAPITAL) non zero" ;

 ABORT $(ASAM0("KAPITAL","COMMDTY") NE 0.0)
 "ASAM0(KAPITAL,COMMDTY) non zero" ;

 ABORT $(ASAM0("KAPITAL","ACTIVITY") NE 0.0)
 "ASAM0(KAPITAL,ACTIVITY) non zero" ;

 ABORT $(ASAM0("KAPITAL","VALUAD") NE 0.0)
 "ASAM0(KAPITAL,VALUAD) non zero" ;

 ABORT $(ASAM0("WORLD","ACTIVITY") NE 0.0)
 "ASAM0(WORLD,ACTIVITY) non zero" ;

 ABORT $(ASAM0("WORLD","HHOLDS") NE 0.0)
 "ASAM0(WORLD,HHOLDS) non zero" ;

 ABORT $(ASAM0("WORLD","ENTP") NE 0.0)
 "ASAM0(WORLD,ENTP) non zero" ;

 ABORT $(ASAM0("WORLD","GOVTN") NE 0.0)
 "ASAM0(WORLD,GOVTN) non zero" ;

 ABORT $(ASAM0("WORLD","KAPITAL") NE 0.0)
 "ASAM0(WORLD,KAPITAL) non zero" ;

 ABORT $(ASAM0("WORLD","WORLD") NE 0.0)
 "ASAM0(WORLD,WORLD) non zero" ;

*---- 3. Checking for Illegal Negative SAM Entries -----------------------

Parameter
 MDnegCNT       Count of negative margin demand
 INTDnegCNT     Count of negative intermediate input demand
 CDnegCNT       Count of negative household demand
 GDnegCNT       Count of negative government demand
 EnegCNT        Count of negative export demand

 MSnegCNT       Count of negative margin supply

 XCSnegCNT      Count of negative commodity supply

 FDnegCNT       Count of negative factor demands

 YHFnegCNT      Count of negative household income from factors

 YEFnegCNT      Count of negative enterprise income from factors

 MnegCNT        Count of negative import demand
   ;

   MDnegCNT     = SUM((c,m)$(SAM(c,m) LT 0.0), 1)       ;
   INTDnegCNT   = SUM((c,a)$(SAM(c,a) LT 0.0), 1)       ;
   CDnegCNT     = SUM((c,h)$(SAM(c,h) LT 0.0), 1)       ;
   GDnegCNT     = SUM(c$(SAM(c,"govt") LT 0.0), 1)      ;
   EnegCNT      = SUM((c,w)$(SAM(c,w) LT 0.0), 1)       ;

   MSnegCNT = SUM((m,c)$(SAM(m,c) LT 0.0), 1) ;

   XCSnegCNT = SUM((a,c)$(SAM(a,c) LT 0.0), 1) ;

   FDnegCNT = SUM((f,a)$(SAM(f,a) LT 0.0), 1) ;

   YHFnegCNT = SUM((h,f)$(SAM(h,f) LT 0.0), 1) ;

   YEFnegCNT = SUM((e,f)$(SAM(e,f) LT 0.0), 1) ;

   MnegCNT = SUM((w,c)$(SAM(w,c) LT 0.0), 1) ;

 ABORT $(MDnegCNT NE 0.0)     "negative margin demand" ;
 ABORT $(INTDnegCNT NE 0.0)   "negative intermediate input demand" ;
 ABORT $(CDnegCNT NE 0.0)     "negative household demand" ;
 ABORT $(GDnegCNT NE 0.0)     "negative government demand" ;
 ABORT $(EnegCNT NE 0.0)      "negative export demand" ;

 ABORT $(MSnegCNT NE 0.0)     "negative margin supply" ;

 ABORT $(XCSnegCNT NE 0.0)    "negative commodity supply" ;

 ABORT $(FDnegCNT NE 0.0)     "negative factor demands" ;

 ABORT $(YHFnegCNT NE 0.0)    "negative household income from factors" ;

 ABORT $(YEFnegCNT NE 0.0)    "negative enterprise income from factors" ;

 ABORT $(MnegCNT NE 0.0)      "negative import demand" ;

*---- 4. Checking for Unmatched Taxes ------------------------------------

*---- 5. Generating Summary Statistics -----------------------------------

PARAMETER
 MAXTV        Maximum absolute value of transaction values in SAM
 MINTV        Maximum absolute value of transaction values in SAM
 TVRATIO      Ratio of max and min transaction values in SAM ;

 MAXTV      = SMAX((SAC,SACP),ABS (SAM(SAC,SACP))) ;
 MINTV      = SMIN((SAC,SACP)$SAM(SAC,SACP),ABS (SAM(SAC,SACP))) ;
 TVRATIO    = MAXTV/MINTV ;

 option decimals = 6 ;

 DISPLAY MAXTV, MINTV, TVRATIO ;

 option decimals=3 ;

*------------------ end of stage_w data diagnostics -------------------------
* ------- NORMALISED PRICE BLOCK -----------------------------------------

PARAMETERS

 PD0(c)        Consumer price for domestic supply of commodity c
 PE0(c)        Domestic price of exports by commodity c
 PM0(c)        Domestic price of competitive imports c

 PX0(a)        Composite price of output by activity a
 PXC0(c)       Producer price of composite domestic output
 PXAC0(a,c)    Activity commodity prices

 PQS0(c)       Supply price of composite commodity c

 ER0           Exchange rate(domestic per world unit)

   ;

* #### Assignments

 PD0(c)      = 1 ;

 PM0(c)      = 1 ;
 PE0(c)      = 1 ;



* NOTE PX, PXC, PXAC and PQS are weighted averages of normalised prices hence

 PX0(a)      = 1 ;
 PXC0(c)     = 1 ;
 PXAC0(a,c)  = 1 ;

 PQS0(c)     = 1 ;
** JL using original base water prices from Excel sheet "watuse"
 PQS0(cwat) =  watprice(cwat)  ;
** JL 6.9.12

 PD0(c)$cwat(c)          = PQS0(c)  ;
 PXC0(c)$cwat(c)         = PQS0(c)  ;
 PXAC0(a,c)$cwat(c)      = PQS0(c)  ;

 PX0("awatpot")          = PQS0("cwatpot")  ;
**ZK Desalination is not in scope
* PX0("awatdsal")         = PQS0("cwatpot")  ;

 PX0("awatrec")          = PQS0("cwatrec")  ;
**ZK Desalination is not in scope 
* PX0("awatsal")          = PQS0("cwatsal")  ;

 PE0(c)$cwat(c)          = PQS0(c)  ;
 PM0(c)$cwat(c)          = PQS0(c) ;


 ER0         = 1 ;

Display PE0, PXC0, PQS0;

* ------- TRADE BLOCK ----------------------------------------------------

* #### Exports Block

PARAMETERS

* ## Initial values for variables

 PWE0(c)       World price of exports in dollars

 QE0(c)        Domestic output exported by commodity c
 QD0(c)        Domestic demand for commodity c

* ## Parameters for CET functions

 at(c)          Shift parameter for Armington CET function
 gamma(c)       Share parameter for Armington CET function
 rhot(c)        Elasticity parameter for Output Armington CET function

* ## Parameters for Export Demand functions

 econ(c)        constant for export demand equations
 pwse(c)        world price of export substitutes
 eta(c)         export demand elasticity

  ;

* #### Assignments

* ## Initial values for variables

*--------  KS_16_02_11 ----- condition ---------------------------------

QE0(c)$SAM(c,"ROW")         = (SAM(c,"ROW") - SAM("EXPTAX",c))/PE0(c) ;


display QE0;

*Using {QXC0(c) = (SUM(a,SAM(a,c))/PXC0(c))} in statement for
*QD0(c) = QXC0(c) - QE0(c) ;


QD0(c)        = (SUM(a $SAM(a,c),SAM(a,c))/PXC0(c)) - QE0(c) ;

PWE0(c)$QE0(c) = (SAM(c,"ROW")/ER0)/QE0(c) ;

* ## Parameters for CET functions

 rhot(c)$(cd(c) AND ce(c))    = (1/ELASTC(c,"omega")) + 1 ;

 gamma(c)$(cd(c) AND ce(c))
              = 1/(1+PD0(c)/PE0(c)*(QE0(c)/QD0(c))**(rhot(c)-1));

* Using {QXC0(c) = (SUM(a,SAM(a,c))/PXC0(c))} in statement for at(c)

 at(c)$(cd(c) AND ce(c))
              = (SUM(a,SAM(a,c))/PXC0(c))
                 /(gamma(c)*QE0(c)**rhot(c) + (1-gamma(c))*
                       QD0(c)**rhot(c))**(1/rhot(c));


* ## Parameters for Export Demand functions

 econ(c)         = QE0(c) ;
 eta(c)          = ELASTC(c,"exdem") ;

 pwse(c)$QE0(c)  = PWE0(c) ;

* #### Imports Block

PARAMETERS

* ## Initial values for variables

 PWM0(c)       World price of imports in dollars

 QM0(c)        Imports of commodity c
 QQ0(c)        Supply of composite commodity c

* ## Parameters for Armington/CES functions

 ac(c)          Shift parameter for Armington CES function
 delta(c)       Share parameter for Armington CES function
 rhoc(c)        Elasticity parameter for Armington CES function

  ;

* #### Assignments

 QM0(c)      = (SAM("ROW",c) + SAM("IMPTAX",c))/PM0(c) ;


 QQ0(c)      = QD0(c) + QM0(c) ;


 PWM0(c)$QM0(c)
              = (SAM("ROW",c)/ER0)/QM0(c) ;

* ## Parameters for Armington/CES functions

 rhoc(c)$(cx(c) AND cm(c))    = (1/ELASTC(c,"sigma")) - 1 ;

 delta(c)$(cd(c) AND cm(c))
              = (PM0(c)*QM0(c)**(rhoc(c)+1))
                 /(PM0(c)*QM0(c)**(rhoc(c)+1) + PD0(c)*QD0(c)**(rhoc(c)+1)) ;

 ac(c)$(cd(c) AND cm(c))
              = QQ0(c)/(delta(c)*QM0(c)**(-rhoc(c))
                        +(1-delta(c))*QD0(c)**(-rhoc(c)))**(-1/rhoc(c)) ;

* ------- COMMODITY PRICE BLOCK ------------------------------------------

PARAMETERS

* ## Initial values for variables

 PQD0(c)         Purchaser price of composite commodity c

** JL
 QWAT0(sac)      Demand for water composite
 PWAT0(sac)      Composite price for water
 PNW0(a)         Land and water composite price
 QWAT20(c,sac)   Demand for water commodities
 PQDDIST0(c,a)   Sectoral proportion for water prices
;
* #### Assignments

* ## Initial values for variables


 PQD0(c)$QQ0(c)
            = (SAM(c,"TOTAL") - SAM(c,"ROW"))/QQ0(c) ;

PWM0(c)$QM0(c)
              = (SAM("ROW",c)/ER0)/QM0(c) ;


* ------- NUMERAIRE PRICE BLOCK ------------------------------------------

PARAMETERS

* ## Initial values for variables

 CPI0          Consumer price index
 PPI0          Producer (domestic) price index

* ## Price index weights

 comtotsh(c)    Share of commodity c in total commodity demand
 vddtotsh(c)    Share of value of domestic output for the domestic market
  ;

* #### Assignments

* ## Initial values for variables

 CPI0         = SUM(c,SUM(h,SAM(c,h))/(SUM((cp,hp),SAM(cp,hp)))*PQD0(c)) ;
 PPI0         = SUM(c,(SUM(a,SAM(a,c))/SUM((ap,cp),SAM(ap,cp)))*PD0(c)) ;

* ## Price index weights

* note that the CPI weights are based on household expenditure shares ONLY
* alternate 1 - CPI weights based on household final demand expenditure shares
*$ontext
 comtotsh(c)$(SUM((cp,hp),SAM(cp,hp)))
              = SUM(h,SAM(c,h))/(SUM((cp,hp),SAM(cp,hp))) ;
*$offtext
* alternate 2 - CPI weights based on total final demand expenditure shares
$ontext
 comtotsh(c)   = (SUM(h,SAM(c,h)) + SAM(c,"govt") + SAM(c,"kap"))
                 /(SUM((cp,hp),SAM(cp,hp))
                  + SUM(cp,SAM(cp,"govt"))
                  + SUM(cp,SAM(cp,"kap")))  ;
$offtext

* PPI weights are based on the value of domestic output for the domestic market

 vddtotsh(c)$(SUM((ap,cp),SAM(ap,cp)))
               = SUM(a,SAM(a,c))/SUM((ap,cp),SAM(ap,cp)) ;

* ------- PRODUCTION BLOCK -----------------------------------------------

PARAMETERS

* ## Initial values for variables

 QX0(a)        Domestic production by activity a
 QXC0(c)       Domestic production by commodity c

 PVA0(a)       Value added price for activity a
 PINT0(a)      Price of aggregate intermediate input

 QINT0(a)      Aggregate quantity of intermediates used by activity a
 QVA0(a)       Quantity of aggregate value added for level 1 production

 QXAC0(a,c)    Domestic commodity output by each activity

 QINTD0(c)     Demand for intermediate inputs by commodity
** JL 15.6.12
 QINTD20(c,a)  Demand for intermediate inputs by commodity and activity

 WF0(f)        Price of factor f
 WFDIST0(f,a)  Sectoral proportion for factor prices

 FD0(f,a)      Demand for factor f by activity a
 FS0(f)        Supply of factor f
 

** JL 11.10.12
 QNW0(a)       Aggregated quantity of water and land used by activity a
 QWATMUN0      Water consumption of municipalities
 QSEW0         Sewage "produced" by municipalities
 QSEWS0        Sewage collected in central sewer system

* Technology Parameters and Adjustment factors

 ADX0(a)       Shift parameter for CES production functions for QX
 ADXADJ0       Scaling Factor for Shift parameter on CES functions for QX
 DADX0         Partial scaling factor for Shift parameter on CES functions for QX

 ADVA0(a)      Shift parameter for CES production functions for QVA
 ADVAADJ0      Scaling Factor for Shift parameter on CES functions for QVA
 DADVA0        Partial scaling factor for Shift parameter on CES functions for QVA
 ADFD0(f,a)    Shift parameter for factor and activity specific efficiency

* CES aggregation functions for Level 1 of production nest

 adxb(a)        Shift parameter for CES production functions for QX
 dabadx(a)      Change in base shift parameter on functions for QX
 adx01(a)       0-1 par for flexing of shift parameter on functions for QX

 predeltax(a)   dummy used to estimated deltax
 deltax(a)      Share parameter for CES production functions for QX
 rhocx(a)       Elasticity parameter for CES production function for QX

* Leontief aggregation functions for Level 1 of production nest

 use(c,a)       use matrix transactions
 comactco(c,a)  use matrix coefficients

 ioqintqx(a)    Agg intermed quantity per unit QX for Level 1 Leontief agg
 ioqvaqx(a)     Agg value added quant per unit QX for Level 1 Leontief agg

* CES aggregation functions for Level 2 of production nest

 advab(a)       Shift parameter for CES production functions for QVA
 dabadva(a)     Change in base shift parameter on functions for QVA
 adva01(a)      0-1 par for flexing of shift parameter on functions for QVA
 deltava(fc,a)  Share parameters for CES production functions for QVA
 rhocva(a)      Elasticity parameter for CES production function for QVA
**JL 25.2.14
 ioqnwqva(fc,a)  Input output coefficients in QVA for Leontief functions on 2. L
 ioqwatqnw(fc,a) Input output coefficients in QNW for Leontief functions on 3. L
 iofcqwat(fc,a)  Factor input output coef. in QWAT for Leontief funct. on 4. L

** JL 29.11.13
* CES aggregation functions for Level 3 of production nes

 deltanw(fc,a) Share parameter of land and water factors for land-water nest
 rhonw(a)      Elasticity parameter for CES prod. funct. for land-water nest
 adnw(a)       Shift parameter for CES function for land-water nest

** JL 6.5.
* CES aggregation functions for Level 4 of production nest
 rhowat(a)      Elasticity parameter for CES production function for CWAT
 adwat(a)       Shift parameter for CES function  for water nest
 deltawat(fc,a) Share parameter for factors and commodities on 4. level

* Intermediate Input Demand

 ioqtdqd(c,a)   intermediate input output coefficients

* Commodity Output

 adxc(c)        Shift parameter for commodity output CES aggregation
 deltaxc(a,c)   Share parameters for commodity output CES aggregation
 rhocxc(c)      Elasticity parameter for commodity output CES aggregation

* Activity Output

 ioqxacqx(a,c)  Share of commodity c in output by activity a

  ;


* #### Assignments

* ## Initial values for variables

 QX0(a)      = SAM("TOTAL",a)/PX0(a) ;

** JL 30.04.14
 QWATMUN0 =  SUM(cwat,(SUM(h,SAM(cwat,h))+SUM(asew,SAM(cwat,asew)))/PQD0(cwat));

 QSEW0 =  SUM(cwat,(SUM(h,SAM(cwat,h)*SHSEWMUN0(cwat,h))
         +SUM(asew,SAM(cwat,asew)*SHSEWMUN0(cwat,asew) ))/PQD0(cwat));

 QSEWS0       = QSEW0*SHSEWS0;

**JL 11.6.12
 QWAT20(c,sac)$cwat(c)  =   SAM(c,sac)/PQD0(c)     ;
 QWAT20(c,sac)$cnwat(c) =   0.0;

** JL 01.05.14

 FD0(f,a)$(not sew(f))        = SAM(f,a) ;

 FS0(f)$(not sew(f))       = SUM(a,SAM(f,a)) ;

**JL 1.11.14
 FS0(f)$sew(f)   =  QSEWS0* (1-SHSEWL0);

** JL 03.11.14

 FD0(f,a)$(sew(f) and SAM("fsew",a))   =  FS0("fsew");


 WF0(f)$(FS0(f))          = SUM(a,SAM(f,a))/FS0(f) ;


 WFDIST0(f,a)$FD0(f,a)                   = (SAM(f,a)/FD0(f,a))/WF0(f) ;
 WFDIST0(f,a)$(FD0(f,a) EQ 0)            = 0.0 ;


 QXC0(c)             = SUM(a $SAM(a,"TOTAL"),SAM(a,c))/PXC0(c) ;

 QINT0(a)            = SUM(c$cnwat(c), SAM(c,a)) ;
 PINT0(a)$(QINT0(a)) = SUM(c$cnwat(c),(SAM(c,a)/PQD0(c)/QINT0(a)) * PQD0(c)) ;

**JL 14.6.12
 QVA0(a)$acwat(a)               =  SUM(f,SAM(f,a))+ SUM(c$cwat(c),QWAT20(c,a));
**JL 4.6.12
 PVA0(a)$(QVA0(a)and acwat(a))  = (SUM(f,SAM(f,a))+ SUM(c$cwat(c),SAM(c,a))
                                +SUM(tff,SAM(tff,a))+SUM(tw,SAM(tw,a)))/QVA0(a);

**JL 18.08.14
 QVA0(a)$ancwat(a)               = SUM(f,SAM(f,a));

**JL 4.6.12
 PVA0(a)$(QVA0(a)and ancwat(a))  = (SUM(f,SAM(f,a))
                                   +SUM(tff,SAM(tff,a)))/QVA0(a) ;

** JL 13.4.
 QXAC0(a,c)$PXAC0(a,c)   = SAM(a,c)/PXAC0(a,c) ;

** JL 01.05.14
 QWAT0(a) = SUM(f4,FD0(f4,a))+SUM(c,QWAT20(c,a)) ;

**JL 18.08.14
 QNW0(a)                         =SUM(f3,SAM(f3,a))+QWAT0(a) ;

DISPLAY QWAT20, QWAT0, QNW0, QINT0, QVA0, PINT0, PVA0, QQ0, FS0;

 QINTD0(c) = SUM(a ,SAM(c,a)/((SAM(c,"TOTAL") - SAM(c,"ROW"))/QQ0(c))) ;

** JL 15.6.12
 QINTD20(c,a) = SAM(c,a)/PQD0(c)   ;

** JL 15.6.12
 PQDDIST0(c,a)$QINTD20(c,a) =    SAM(c,a)/QINTD20(c,a)/PQD0(c);


DISPLAY QINTD20, QINTD0, PQDDIST0;

**JL 6.2.14
 PWAT0(sac)$(QWAT0(sac)) = (SUM(cwat,SAM(cwat,sac))+SUM(tw,SAM(tw,sac))
                            +SUM(f4,SAM(f4,sac))+SUM(f$f4(f),
                            (SUM(tff$map_tff_f(tff,f),SAM(tff,sac)))))
                             /QWAT0(sac) ;

**JL 10.02.14

PNW0(a)$QNW0(a) = (SUM(f3,SAM(f3,a)) + SUM(f$f3(f),
                         (SUM(tff$map_tff_f(tff,f),SAM(tff,a))))
                         +(QWAT0(a)*PWAT0(a)))/QNW0(a) ;


Display PNW0, PWAT0, WF0, FD0, FS0, WF0, WFDIST0;

* Technology Parameters and Adjustment factors

 ADXADJ0       = 1 ;
 DADX0         = 0 ;

 ADVAADJ0      = 1 ;
 DADVA0        = 0 ;

 ADFD0(f,a)    = 1 ;


* CES aggregation functions for Level 1 of production nest

 rhocx(a)    = (1/ELASTX(a,"sigmax")) - 1 ;

 predeltax(a)$(QINT0(a))
               = (PVA0(a)/PINT0(a))*(QVA0(a)/QINT0(a))**(1+rhocx(a)) ;
 deltax(a)
               = predeltax(a)/(1.0+predeltax(a)) ;

 ADX0(a)$deltax(a)
               = QX0(a)/(deltax(a)*QVA0(a)**(-rhocx(a))
                      +(1-deltax(a))*QINT0(a)**(-rhocx(a)))**(-1/rhocx(a)) ;

 adxb(a)       = ADX0(a) ;
 dabadx(a)     = 0.0 ;
 adx01(a)      = 0.0 ;

* Leontief aggregation functions for Level 1 of production nest

 use(c,a)$SAM("TOTAL",a)
               = SAM(c,a)/SAM("TOTAL",a) ;
 comactco(c,a)$(QX0(a)$PQD0(c))
               = (SAM(c,a)/PQD0(c))/QX0(a) ;


 ioqintqx(a)$QX0(a)   = QINT0(a)/QX0(a) ;

 ioqvaqx(a)$QX0(a)    = QVA0(a)/QX0(a) ;

*  Leontief production function on 2. level value added side
 ioqnwqva(f,a)$(QVA0(a)and WF0(f))        = SAM(f,a)/WF0(f)/QVA0(a)  ;
** JL 25.02.14
 ioqnwqva("cnw",a)$QVA0(a)     = QNW0(a)/QVA0(a) ;



*  Leontief production function on 3. level value added side
  ioqwatqnw(f3,a) $(QNW0(a)and WF0(f3))= FD0(f3,a)/WF0(f3)/(QNW0(a))  ;

  ioqwatqnw("cwat",a)$ QNW0(a)                  =QWAT0(a)/QNW0(a) ;


*  Leontief production function on 4. level value added side
**JL 6.2.14
 iofcqwat(f4,a)$(QWAT0(a) and WF0(f4))  =SAM(f4,a)/WF0(f4)/QWAT0(a);
 iofcqwat(cwat,a)$(acwat(a)) =   SAM(cwat,a)/PQD0(cwat)/QWAT0(a);

* CES aggregation functions for Level 2 of production nest

 rhocva(a)$afx(a)   = (1/ELASTX(a,"sigmava")) - 1 ;

** JL 11.10.12  CES aggregation functions for Level 3 of production nest
 rhonw(a)$af3x(a)  =(1/ELASTX(a,"sigmanw"))-1 ;

** JL 19.5. CES aggregation functions for Level 4 of production nest
 rhowat(a)$af4x(a)      = (1/ELASTX(a,"sigmawat"))-1;


PARAMETERS
** JL
 tf02(f,a)       tf for calibration of production functions
 twata02(c,a)    twata for calibration of production functions
;

 tf02(f,a)$SAM(f,a)     = ((SUM(tff$map_f_tff(f,tff),SAM(tff,a)))
                                 /SAM(f,a)) ;

 twata02(c,a)$SAM(c,a)  = ((SUM(tw$map_c_tw(c,tw),SAM(tw,a)))
                                 /SAM(c,a));

**-------------------- QVA-nest-----------------------------------------------

* share parameters WITH factor use taxes - tf0(f,a)


 deltava(f2,a)$WFDIST0(f2,a)
          = (WFDIST0(f2,a)*WF0(f2)*(1+tf02(f2,a))*(FD0(f2,a))**(1+rhocva(a)))
            /(SUM(f2p,WFDIST0(f2p,a)*WF0(f2p)*(1+tf02(f2p,a))*(FD0(f2p,a))
             **(1+rhocva(a)))+ PNW0(a)*QNW0(a)**(1+rhocva(a)))  ;

**JL 24.02.14
 deltava("cnw",a)$PNW0(a)
          = (PNW0(a)*QNW0(a)**(1+rhocva(a)))
           /(SUM(f2p,WFDIST0(f2p,a)*WF0(f2p)*(1+tf02(f2p,a))*(FD0(f2p,a))
             **(1+rhocva(a)))+ PNW0(a)*QNW0(a)**(1+rhocva(a)))  ;


**--------------------land-water nest------------------------------------------
** JL 15.01.14
 deltanw(f3,a)$ WFDIST0(f3,a)
           =(WFDIST0(f3,a)*WF0(f3)*(1+tf02(f3,a))*(FD0(f3,a))**(1+rhonw(a)))
            /(SUM(f3p,WFDIST0(f3p,a)*WF0(f3p)*(1+tf02(f3p,a))*(FD0(f3p,a))
             **(1+rhonw(a)))+ PWAT0(a)*QWAT0(a)**(1+rhonw(a)))   ;


deltanw("cwat",a)$PWAT0(a)
          = (PWAT0(a)*QWAT0(a)**(1+rhonw(a)))
            /(SUM(f3p,WFDIST0(f3p,a)*WF0(f3p)*(1+tf02(f3p,a))*(FD0(f3p,a))
             **(1+rhonw(a))) + PWAT0(a)*QWAT0(a)**(1+rhonw(a))) ;

** JL 13.02.14
 adnw(a)$(af3x(a) and QNW0(a))
         = QNW0(a)/(sum(f3$deltanw(f3,a),deltanw(f3,a)*(ADFD0(f3,a)*FD0(f3,a))
                 **(-rhonw(a)))
           +(deltanw("cwat",a)*QWAT0(a)**(-rhonw(a)))$deltanw("cwat",a))
                 **(-1/rhonw(a)) ;

**--------------------water aggregate------------------------------------------

**JL 24.02.14
 deltawat(c,a)$(QWAT20(c,a))
         = (PQD0(c)*PQDDIST0(c,a)*(1+twata02(c,a))*QWAT20(c,a)**(1+rhowat(a)))
            /(Sum(cp$cwat(cp),PQD0(cp)*PQDDIST0(cp,a)*(1+twata02(cp,a))
                 *QWAT20(cp,a)**(1+rhowat(a)))
             +Sum(f4p,WFDIST0(f4p,a)*WF0(f4p)*(1+tf02(f4p,a))*FD0(f4p,a)
                 **(1+rhowat(a))))  ;

** JL 25.08.14
 deltawat(f4,a)$(SAM(f4,a) and not FD0("fsew",a))
         = (WFDIST0(f4,a)*WF0(f4)*(1+tf02(f4,a))*FD0(f4,a)**(1+rhowat(a)))
            /(Sum(cp$cwat(cp),PQD0(cp)*PQDDIST0(cp,a)*(1+twata02(cp,a))
                *QWAT20(cp,a)**(1+rhowat(a)))
            +Sum(f4p,WFDIST0(f4p,a)*WF0(f4p)*(1+tf02(f4p,a))*FD0(f4p,a)
                 **(1+rhowat(a)))) ;

deltawat("fsew","awatrec") = 1;

** JL 6.2.14
  adwat(a)$(af4x(a)and QWAT0(a))
        = QWAT0(a)/(SUM(c$deltawat(c,a),deltawat(c,a)*QWAT20(c,a)**(-rhowat(a)))
           +SUM(f4$deltawat(f4,a),deltawat(f4,a)*(ADFD0(f4,a)* FD0(f4,a))
                          **(-rhowat(a))))**(-1/rhowat(a))    ;

display deltanw, deltava, ancwat, ioqnwqva, deltawat;

*-------- KS-08-02-11 -------------------------------------------------

**JL 7.2.14
 ADVA0(a) $(SAM("TOTAL",a)  and afx(a) )
                 = QVA0(a)/(SUM(f$(FD0(f,a)),deltava(f,a)
                                *FD0(f,a) **(-rhocva(a))))**(-1/rhocva(a)) ;

** JL 7.2.14
 ADVA0(a)$ (SAM("TOTAL",a) and afx(a) and deltava("cnw",a)) = QVA0(a)/
         (SUM(f2$deltava(f2,a), deltava(f2,a)*(ADFD0(f2,a)* FD0(f2,a))
                 **(-rhocva(a)))
         + deltava("cnw",a)*QNW0(a)**(-rhocva(a)))**(-1/rhocva(a));

Display ADVA0, ADX0;

 advab(a)      = ADVA0(a) ;
 dabadva(a)    = 0.0 ;
 adva01(a)     = 0.0 ;

* Intermediate Input Demand

 ioqtdqd(c,a)$(QINT0(a) and PQD0(c) and cnwat(c))
               = SAM(c,a)/PQD0(c)/QINT0(a) ;


* Commodity Output
** JL 26.6.12
 rhocxc(c)$cxac(c)   = (1/ELASTC(c,"sigmaxc")) - 1 ;

 deltaxc(a,c)$SAM(a,c)
               = (PXAC0(a,c)*QXAC0(a,c)**(1+rhocxc(c)))
                 /SUM(ap,PXAC0(ap,c)*QXAC0(ap,c)**(1+rhocxc(c))) ;

 adxc(c)$(QXC0(c) and cxac(c))
               = QXC0(c)/(SUM(a,deltaxc(a,c)*QXAC0(a,c)
                    **(-rhocxc(c)))**(-1/rhocxc(c)));

* Activity Output

 ioqxacqx(a,c)$SUM(cp,SAM(a,cp))
               = SAM(a,c)/SUM(cp,SAM(a,cp)) ;


DISPLAY  ioqnwqva ,ioqwatqnw, ADVA0;

* ------- FACTOR BLOCK ---------------------------------------------------

PARAMETERS

* ## Initial values for variables

 YF0(f)        Income to factor f
 YFDISP0(f)    Factor income for distribution after depreciation

* ## Savings Expenditures

 deprec(f)      Depreciation rate by factor f

* ## Transfer Expenditures

 hovash(h,f)    Share of income from factor f to household h
 entvash(e,f)   Share of income from factor f to enterprise e
 govvash(f)     Share of income from factor f to government
 worvash(f)     Share of income from factor f to RoW

  ;

* #### Assignments

* ## Initial values for variables

 YF0(f)      = SAM("TOTAL",f) ;
 YFDISP0(f)  = (SAM("TOTAL",f) - SAM("KAP",f) - SAM("FACTTAX",f)) ;

* ## Savings Expenditures

 deprec(f)$(SAM("TOTAL",f))
               = SAM("KAP",f)/SAM("TOTAL",f) ;

* ## Transfer Expenditures

 hovash(h,f)$(SAM("TOTAL",f) - SAM("KAP",f) - SAM("FACTTAX",f))
                 = SAM(h,f)/
                    (SAM("TOTAL",f) - SAM("KAP",f) - SAM("FACTTAX",f)) ;

 entvash(e,f)$(SAM("TOTAL",f) - SAM("KAP",f) - SAM("FACTTAX",f))
                 = SAM(e,f)/
                    (SAM("TOTAL",f) - SAM("KAP",f) - SAM("FACTTAX",f)) ;

 govvash(f)$(SAM("TOTAL",f) - SAM("KAP",f) - SAM("FACTTAX",f))
                 = SAM("GOVT",f)/
                    (SAM("TOTAL",f) - SAM("KAP",f) - SAM("FACTTAX",f)) ;

 worvash(f)$(SAM("TOTAL",f) - SAM("KAP",f) - SAM("FACTTAX",f))
                 = SAM("ROW",f)/
                    (SAM("TOTAL",f) - SAM("KAP",f) - SAM("FACTTAX",f)) ;

* ------- HOUSEHOLD BLOCK ------------------------------------------------

PARAMETERS

* ## Initial values for variables

 YH0(h)         Income to household h
 YH_cap0(h)     Income per capita adult equiv to household h
 HOHO0(h,hp)    Inter household transfer
 HEXP0(h)       Household consumption expenditure
 HEXP_cap0(h)   Household consumption expenditure per capita adult equiv
 QCD0(c,h)      Household consumption by commodity c


* ## Transfer Expenditures

 hohosh(h,hp)   Share of h'hold h after tax and saving income transferred to hp

 hohoconst(h,hp) interhousehold transfers

* ## Consumption Expenditures
* # Cobb Douglas Utility function

 comhoav(c,h)   Household consumption shares
 alphah(c,h)    Expenditure share by commodity c for household h

* # Stone-Geary Utility function

 sumelast(h)    Weighted sum of income elasticities
 yhelast(c,h)   (Normalised) household income elasticities
 beta(c,h)      Marginal budget shares
 hexps(h)       Subsistence consumption expenditure
 frisch(h)      Elasticity of the marginal utility of income
 qcdconst(c,h)  Volume of subsistence consumption
 ;

* #### Assignments

* ## Initial values for variables

 YH0(h)          = SAM("TOTAL",h) ;
 YH_cap0(h)$pop(h)
                 = YH0(h)/pop(h) ;

 HOHO0(h,hp)     = SAM(h,hp) ;

 HEXP0(h)        = SUM(c,SAM(c,h)) ;
 HEXP_cap0(h)$pop(h)
                 = HEXP0(h)/pop(h) ;

 QCD0(c,h)$(SAM(c,h))       = SAM(c,h)/PQD0(c) ;

* ## Transfer Expenditures

 hohosh(h,hp)$(SAM("TOTAL",h) - SAM("DIRTAX",h) - SAM("KAP",h))
                 = SAM(h,hp)/
                    (SAM("TOTAL",h) - SAM("DIRTAX",h) - SAM("KAP",h)) ;

 hohoconst(h,hp) = SAM(h,hp) ;

* ## Consumption Expenditures
* # Cobb Douglas Utility function

 comhoav(c,h)$SUM(cp,SAM(cp,h))
                 = SAM(c,h)/SUM(cp,SAM(cp,h)) ;

 alphah(c,h)$SUM(cp,SAM(cp,h))
                 = SAM(c,h)/(SUM(cp,SAM(cp,h))) ;

* # Stone-Geary Utility function
* Weighted sum of the expenditures elasticities must equal one.
* Weights are average budget shares. Normalised elasticities will satisfy
* Engel aggregation

 sumelast(h)   = SUM(c, alphah(c,h)*ELASTY(c,h)) ;

 yhelast(c,h)$sumelast(h)
               = ELASTY(c,h)/sumelast(h) ;

 yhelast(c,h)$(alphah(c,h) eq 0)  = 0 ;

 beta(c,h)     = yhelast(c,h)*alphah(c,h) ;

 frisch(h)     = ELASTMU(h,"frisc") ;

 qcdconst(c,h)$PQD0(c)
               = (HEXP0(h)/PQD0(c))*(alphah(c,h)+(beta(c,h)/frisch(h))) ;

 hexps(h)      = SUM(c,qcdconst(c,h) * PQD0(c)) ;

* ------- ENTERPRISE BLOCK -----------------------------------------------

PARAMETERS

* ## Initial values for scaling variables

 QEDADJ0       Enterprise demand volume Scaling Factor
 HEADJ0        Scaling factor for enterprise transfers to households

* ## Initial values for variables

 YE0(e)        Enterprise income

 HOENT0(h,e)   Household Income from enterprise e
 GOVENTSH0     Share of entp' income after tax save and consump to govt
 GOVENT0(e)    Government income from enterprise e

 QED0(c,e)     Enterprise consumption by commodity c
 VED0(e)       Value of enterprise consumption expenditure

* ## Transfer Expenditures

 hoentconst(h,e)  transfers to hhold h from enterprise e (nominal)
 hoentsh(h,e)   Share of entp' income after tax save and consump to h'hold
 goventsh(e)    Share of entp' income after tax save and consump to govt

* ## Consumption Expenditures

* comentconst(c,e) Enterprise demand volume
 qedconst(c,e) Enterprise demand volume

  ;

* #### Assignments

* ## Initial values for scaling variables

 QEDADJ0 = 1 ;
 HEADJ0    = 1 ;

* ## Initial values for variables

 YE0(e)      = SAM("TOTAL",e) ;

 HOENT0(h,e) = SAM(h,e) ;
 GOVENT0(e)  = SAM("GOVT",e) ;
 GOVENTSH0(e)$(SAM("TOTAL",e) - SAM("DIRTAX",e) - SAM("KAP",e) -SUM(c,SAM(c,e)))
             = SAM("GOVT",e)/
                (SAM("TOTAL",e) - SAM("DIRTAX",e)
                       - SAM("KAP",e) - SUM(c,SAM(c,e))) ;


*------ KS_11_02_11   ---------  condition --------------------------------------

 QED0(c,e) $(SAM(c,e))= SAM(c,e)/PQD0(c) ;
 VED0(e)   = SUM(c,SAM(c,e)) ;

* ## Transfer Expenditures

 hoentconst(h,e) = SAM(h,e)/CPI0 ;

 hoentsh(h,e)$(SAM("TOTAL",e) - SAM("DIRTAX",e) - SAM("KAP",e) -SUM(c,SAM(c,e)))
                 = SAM(h,e)/
                    (SAM("TOTAL",e) - SAM("DIRTAX",e)
                       - SAM("KAP",e) - SUM(c,SAM(c,e))) ;

 goventsh(e)$(SAM("TOTAL",e) - SAM("DIRTAX",e) - SAM("KAP",e) - SUM(c,SAM(c,e)))
                 = SAM("GOVT",e)/
                      (SAM("TOTAL",e) - SAM("DIRTAX",e)
                        - SAM("KAP",e) - SUM(c,SAM(c,e))) ;

* ## Consumption Expenditures

*------ KS_11_02_11   ----------  condition ------------------------------

 qedconst(c,e)$(SAM(c,e))   = SAM(c,e)/PQD0(c) ;

* ------- GOVERNMENT BLOCK -----------------------------------------------

* #### Government Taxes Block

PARAMETERS
* ## Initial values for overall scaling variables
 TEADJ0        Export subsidy Scaling Factor
 TMADJ0        Tarrif rate Scaling Factor
 TSADJ0        Sales tax rate scaling factor
 TEXADJ0       Excise tax rate scaling factor
 TXADJ0        Indirect Tax Scaling Factor
 TFADJ0        Factor Use Tax Scaling Factor
 TYFADJ0       Factor Tax Scaling Factor
 TYHADJ0       Household Income Tax Scaling Factor
 TYADJ0        Household and Enterprise Income Tax Scaling Factor
 TYEADJ0       Enterprise income tax Scaling Factor
** JL 4.6.12
 TWATADJ0      Water tax rate scaling factor
 TWATAADJ0     Water use tax rate scaling factor
 
** ZK
 TAADJ0        Aggregate Tax accounts Scaling Factor
 TSUBADJ0      Subsidies accounts Scaling Factor

* ## Initial values for partial scaling variables
 DTE0         Partial Export tax rate scaling factor
 DTM0         Partial Tariff rate scaling factor
 DTS0         Partial Sales tax rate scaling factor
 DTEX0        Partial Excise tax rate scaling factor
 DTX0         Partial Indirect tax rate scaling factor
 DTF0         Uniform adjustment to factor use tax by activity
 DTYF0        Partial direct tax on factor rate scaling factor
 DTYH0        Partial direct tax on household rate scaling factor
 DTY0         Partial direct tax on h'hold and enterprise rate scaling factor
 DTYE0        Partial direct tax on enterprise rate scaling factor
** JL 4.6.12
 DTWAT0(c)     Partial Water tax rate scaling factor
 DTWATA0       Uiform adjustment to water use tax by activity
 
** ZK
 DTA0          Partial aggregate Tax accounts Scaling Factor
 DTSUB0        Partial Subsidies accounts Scaling Factor
* ## Initial tax revenues

 MTAX0         Tariff revenue
 ETAX0         Export tax revenue
 DTAX0         Direct Income tax revenue
 FYTAX0        Factor Income tax revenue
 ITAX0         Indirect tax revenue
 FTAX0         Factor use tax revenue
 STAX0         Sales tax revenue
 EXTAX0        Excise tax revenue
 FUETAX0       Fuel tax revenue
**JL 4.6.12
 WATTAX0       Water commodity tax revenue
 WATATAX0      Water use tax revenue

**ZK
 ATAX0         Aggregate Tax revenue
 SUBTAX0       Subsidies revenue 
 
* ## Initial tax rates
 TE0(c)        Export subsidy rate
 TM0(c)        Tariff rate on commodity c
 TS0(c)        Sales tax rates
 TEX0(c)       Excise tax rates
 TYF0(f)       Factor Income tax rate
 TX0(a)        Indirect tax rate on activity a
 TF0(f,a)      Factor use tax rate
 TYH0(h)       Direct tax rate on household h
 TYE0(e)       Direct tax rate on enterprises

**JL 4.6.
 TWAT0(c)      Water tax rates(on water commodity c)
 TWATA0(c,a)   Water use tax rate on activities
 
**ZK
 TA0(c)        Aggregate tax rate
 TSUB0(a)      Subsidies account rate



* ## base tax rates
 teb(c)        Export subsidy rate
 tmb(c)        Tariff rate on commodity c
 tsb(c)        Sales tax rates
 texb(c)       Excise tax rates
 tyfb(f)       Factor Income tax rate
 txb(a)        Indirect tax rate on activity a
 tfb(f,a)      Factor use tax rate
 tyhb(h)       Direct tax rate on household h
 tyeb(e)       Direct tax rate on enterprises

 tmr(c)        Real tariff rate
**JL 4.6.12
 twatb(c)      Water tax rates(on water commodity c)
 twatab(c,a)   Water use tax rates(on water commodity c)
 
**ZK
 tab(c)        Aggregate tax rate
 tsubb(a)      Subsidies tax rate 

* ## absolute changes in base tax rates

 dabte(c)      Change in base export taxes on comm'y imported from region w
 dabtm(c)      Change in base tariff rates on comm'y imported from region w
 dabts(c)      Change in base sales tax rate
 dabtex(c)     Change in base excise tax rate
 dabtx(a)      Change in base indirect tax rate
 dabtf(f,a)    Change in base factor us tax rate on activities
 dabtyf(f)     Change in base direct tax rate on factors
 dabtyh(h)     Change in base direct tax rate on households
 dabtye(e)     Change in base direct tax rate on enterprises
** JL 4.6.12
 dabtwat(c)    Change in base water tax rate
 dabtwata(c,a) Change in base water use tax rate
 
**ZK
 dabta(c)        Change in base aggregate tax rate
 dsubbta(a)      Change in base subsidies rate
 
* ## partial changes in tax rates

 te01(c)       0-1 par for potential flexing of export taxes on comm'ies
 tm01(c)       0-1 par for potential flexing of Tariff rates on comm'ies
 ts01(c)       0-1 par for potential flexing of sales tax rates
 tex01(c)      0-1 par for potential flexing of excise tax rates
 tx01(a)       0-1 par for potential flexing of indirect tax rates
 tf01(f,a)     0-1 par for potential flexing of factor use tax rates
 tyf01(f)      0-1 par for potential flexing of direct tax rates on factors
 tyh01(h)      0-1 par for potential flexing of direct tax rates on h'holds
 tye01(e)      0-1 par for potential flexing of direct tax rates on e'rises

** JL 4.6.12
 twat01(c)       0-1 par for potential flexing of water tax rates
 twata01(c,a)    0-1 par for potential flexing of water use tax rates

**ZK
 ta01(c)       0-1 par for potential flexing of aggregate taxes on comm'ies
 tsub01(a)     0-1 par for potential flexing of subsidies on activities
 ;

* #### Assignments

* ## Initial values for scaling variables

 TEADJ0    = 1 ;
 TMADJ0    = 1 ;
 TYFADJ0   = 1 ;
 TSADJ0    = 1 ;
 TEXADJ0   = 1 ;
 TXADJ0    = 1 ;
 TFADJ0    = 1 ;
 TYHADJ0   = 1 ;
 TYADJ0    = 1 ;
 TYEADJ0   = 1 ;
**JL 4.6.12
 TWATADJ0  = 1 ;
 TWATAADJ0 = 1 ;
 
**ZK
 TAADJ0    = 1 ;
 TSUBADJ0  = 1 ;

* ## Initial values for partial scaling variables
 DTE0      = 0.0 ;
 DTM0      = 0.0 ;
 DTS0      = 0.0 ;
 DTEX0     = 0.0 ;
 DTX0      = 0.0 ;
 DTF0      = 0.0 ;
 DTYF0     = 0.0 ;
 DTYH0     = 0.0 ;
 DTY0      = 0.0 ;
 DTYE0     = 0.0 ;

**JL 4.6.12
 DTWAT0(c) = 0.0 ;
 DTWATA0   = 0.0 ;
 
** ZK
 DTA0      = 0.0;
 DTSUB0    = 0.0;
 
* ## Initial tax revenues

 MTAX0       = SUM(c,SAM("IMPTAX",c)) ;
 STAX0       = SUM(c,SAM("SALTAX",c)) ;
 EXTAX0      = SUM(c,SAM("ECTAX",c)) ;
 ETAX0       = SUM(c,SAM("EXPTAX",c)) ;
 ITAX0       = SUM(a,SAM("INDTAX",a)) ;
 FTAX0       = SUM((f,a),SUM(tff$map_f_tff(f,tff),SAM(tff,a))) ;
 FYTAX0      = SUM(f,SAM("FACTTAX",f)) ;
** JL 4.6.12
 WATTAX0     = SUM(c,SAM("WATTAX",c));
 WATATAX0    = SUM((c,a),SUM(tw$map_c_tw(c,tw),SAM(tw,a)));

**ZK 
 ATAX0       = SUM(c,SAM("TAXACT",c)) ; 
 SUBTAX0     = SUM(a,SAM("PRDSUB",a)) ;

*------- KS_10_02_11 ------------------------------------------------------

 DTAX0       = SUM(h,SAM("DIRTAX",h)) + SUM(e,SAM("DIRTAX",e))      ;


* ## initial tax rates

 TM0(c)$cm(c) = SAM("IMPTAX",c)/SAM("ROW",c) ;
 TE0(c)$ce(c) = SAM("EXPTAX",c)/SAM(c,"ROW") ;

 TS0(c)$(SUM(a,SAM(c,a)) + SUM(h,SAM(c,h)) + SUM(e,SAM(c,e))+ SUM(g,SAM(c,g))
      + SAM(c,"KAP") + SAM(c,"DSTOC")
      - SAM("SALTAX",c) - SAM("ECTAX",c) - SAM("WATTAX",c)    )
            = SAM("SALTAX",c)/(SUM(a,SAM(c,a))
                               + SUM(h,SAM(c,h))
                               + SUM(e,SAM(c,e))
                               + SUM(g,SAM(c,g))
                               + SAM(c,"KAP")
                               + SAM(c,"DSTOC")
                                  - SAM("SALTAX",c)
                                  - SAM("ECTAX",c)
                                  - SAM("WATTAX",c)
)
;

Display
*TS0,
**ZK
        ATAX0,
        WATTAX0 ,  WATATAX0 ;

*
 TEX0(c)$(SUM(a,SAM(c,a)) + SUM(h,SAM(c,h)) + SUM(e,SAM(c,e))+ SUM(g,SAM(c,g))
         + SAM(c,"KAP") + SAM(c,"DSTOC")
         - SAM("SALTAX",c) - SAM("ECTAX",c) - SAM("WATTAX",c) )
              = SAM("ECTAX",c)/(SUM(a,SAM(c,a))
                                + SUM(h,SAM(c,h))
                                + SUM(e,SAM(c,e))
                                + SUM(g,SAM(c,g))
                                + SAM(c,"KAP")
                                + SAM(c,"DSTOC")
                                   - SAM("SALTAX",c)
                                   - SAM("ECTAX",c)
                                   - SAM("WATTAX",c)
) ;


 TYF0(f)$(SAM("TOTAL",f) - SAM("KAP",f))
              = SAM("FACTTAX",f)/(SAM("TOTAL",f) - SAM("KAP",f)) ;

 TX0(a)$SAM("TOTAL",a)
              = SAM("INDTAX",a)/SAM("TOTAL",a) ;

 TF0(f,a)$SAM(f,a)
              = SUM(tff$map_f_tff(f,tff),SAM(tff,a))/SAM(f,a) ;

 TYH0(h)$SAM("TOTAL",h)
              = SAM("DIRTAX",h)/SAM("TOTAL",h) ;

 TYE0(e)$SAM("TOTAL",e)
              = SAM("DIRTAX",e)/SAM("TOTAL",e) ;

**JL 4.6.12
 TWAT0(c)$(cwat(c)AND (SUM(a,SAM(c,a)) + SUM(h,SAM(c,h)) + SUM(e,SAM(c,e))
                 + SUM(g,SAM(c,g)) + SAM(c,"KAP") + SAM(c,"DSTOC")
                 - SAM("TAXACT",c)- SAM("WATTAX",c)))
                         = SAM("WATTAX",c)
                                /(SUM(a,SAM(c,a))
                               + SUM(h,SAM(c,h))
                               + SUM(e,SAM(c,e))
                               + SUM(g,SAM(c,g))
                               + SAM(c,"KAP")
                               + SAM(c,"DSTOC")
                                  - SAM("TAXACT",c)
                                  - SAM("WATTAX",c)
                                                );
                                                

**ZK
 TA0(c)$SAM("TOTAL",c) = SAM("TAXACT",c)/(SUM(a,SAM(c,a))
                               + SUM(h,SAM(c,h))
                               + SUM(e,SAM(c,e))
                               + SUM(g,SAM(c,g))
                               + SAM(c,"KAP")
                               + SAM(c,"DSTOC")
                                  - SAM("TAXACT",c)
                                  - SAM("WATTAX",c)
)
;
 



 TSUB0(a)$SAM("TOTAL",a) = SAM("PRDSUB",a)/SAM("TOTAL",a);
 
Display TA0, TSUB0;


** JL 4.6.12
*for multiplicative margins
 TWATA0(c,a)$SAM(c,a)
             = SUM(tw$map_c_tw(c,tw),SAM(tw,a))/SAM(c,a) ;

*for additive margins
* TWATA0(c,a)$QWAT20(c,a)
* = SUM(tw$map_c_tw(c,tw),SAM(tw,a))/QWAT20(c,a) ;

Display TWAT0, TWATA0, TF0;

* ## base tax rates
 teb(c)       = TE0(c)  ;
 tmb(c)       = TM0(c)  ;
 tsb(c)       = TS0(c)  ;
 texb(c)      = TEX0(c) ;
 tyfb(f)      = TYF0(f) ;
 txb(a)       = TX0(a)  ;
 tfb(f,a)     = TF0(f,a);
 tyhb(h)      = TYH0(h) ;
 tyeb(e)      = TYE0(e) ;
** JL 4.6.12
 twatb(c)     = TWAT0(c);
 twatab(c,a)  = TWATA0(c,a);
 
**ZK
  tab(c)      = TA0(c) ;
  tsubb(a)    = TSUB0(a) ;

 tmr(c)$cm(c) = tm0(c)*PWM0(c)*ER0 ;

* ## absolute changes in base tax rates

 dabte(c)     = 0.0 ;
 dabtm(c)     = 0.0 ;
 dabts(c)     = 0.0 ;
 dabtex(c)    = 0.0 ;
 dabtx(a)     = 0.0 ;
 dabtf(f,a)   = 0.0 ;
 dabtyf(f)    = 0.0 ;
 dabtyh(h)    = 0.0 ;
 dabtye(e)    = 0.0 ;
** JL 4.6.12
 dabtwat(c)    = 0.0;
 dabtwata(c,a) = 0.0;
**ZK
 dabta(c)      = 0.0;
 dsubbta(a)    = 0.0;
 
* ## partial changes in tax rates

 te01(c)      = 0.0 ;
 tm01(c)      = 0.0 ;
 ts01(c)      = 0.0 ;
 tex01(c)     = 0.0 ;
 tx01(a)      = 0.0 ;
 tf01(f,a)    = 0.0 ;
 tyf01(f)     = 0.0 ;
 tyh01(h)     = 0.0 ;
 tye01(e)     = 0.0 ;

**ZK  
 ta01(c)      = 0.0 ;
 tsub01(a)    = 0.0 ;

** JL 31.5.13 to allow for water price adjustments
* as supply of reclaimed water is bound to sewage production, the price needs to
* adjust to clear the market
 twat01("cwatrec")  = 1.0 ;
**ZK Desalination is not in scope
* twat01("cwatsal")  = 0.0 ;

 twat01("cwatpot")  = 1.0 ;


*  tx01("awatpot")      = 1.0 ;
**JL 26.06.13 to flex desalination subsidy
**ZK Desalination is not in scope
*  tx01("awatdsal")      = 1.0;
*  tx01("awatrec")      = 1.0 ;
* tx01("awatsal")      = 1.0 ;

 twata01(c,a) = 0.0;

* #### Government Income and Expenditure Block

PARAMETERS
* ## Initial values for scaling variables

 QGDADJ0       Government consumption demand scaling factor
**JL 04.11.14
 QGDWADJ0      Government water consumption demand scaling factor
 EGADJ0        Transfers to enterprises by government Scaling Factor
 HGADJ0        Scaling factor for government transfers to households

* ## Initial values for variables

 YG0           Government income

 QGD0(c)       Government consumption demand
 EG0           Expenditure by government
 VGD0          Value of Government consumption expenditure

* ## Transfer Expenditures

 hogovconst(h)  Transfers to hhold h from government (nominal but scalable)
 entgovconst(e) Government transfers to enterprise e

* ## Consumption Expenditures

comgovconst(c) Government demand volume

;

* #### Assignments

* ## Initial values for scaling variables

 QGDADJ0   = 1 ;
**JL 04.11.14
 QGDWADJ0  = 1 ;
 EGADJ0    = 1 ;
 HGADJ0    = 1 ;

* ## Initial values for variables

 YG0         = SAM("TOTAL","GOVT") ;

 QGD0(c)     = SAM(c,"GOVT")/PQD0(c) ;
 EG0         = SAM("TOTAL","GOVT") - SAM("KAP","GOVT") ;
 VGD0        = SUM(c,SAM(c,"GOVT")) ;

* ## Transfer Expenditures

 hogovconst(h)   = SAM(h,"GOVT")/CPI0 ;

 entgovconst(e)  = SAM(e,"GOVT")/CPI0 ;

* ## Consumption Expenditures

 comgovconst(c)  = SAM(c,"GOVT")/PQD0(c) ;

* ------- KAPITAL BLOCK --------------------------------------------------

PARAMETERS
* ## Initial values for scaling variables

 SADJ0         Savings rate scaling factor for BOTH households and enterprises
 SHADJ0        Savings rate scaling factor for households
 SEADJ0        Savings rate scaling factor for enterprises
 IADJ0         Investment scaling factor

 DSHH0         Partial household savings rate scaling factor
 DS0           Partial household and enterprise savings rate scaling factor
 DSEN0         Partial enterprise savings rate scaling factor

* ## Initial values for variables

 INVEST0       Total investment expenditure
 QINVD0(c)     Investment consumption by commodity c
 TOTSAV0       Total savings
**JL 24.03.14
 KAPENT20(esoc) Savings of social Ent

* ## base and initial savings rates
 shh0(h)       Initial Household saving rates
 shhb(h)       Base Household saving rates

 sen0(e)       Initial Enterprise saving rates
 senb(e)       Base Enterprise saving rates

* ## absolute changes in base savings rates

 dabshh(h)     Change in base Household saving rates
 dabsen(e)     Change in base Enterprise saving rates

* ## partial changes in savings rates
 shh01(h)      0-1 par for potential flexing of Household saving rates
 sen01(e)      0-1 par for potential flexing of Enterprise saving rates

* ## Consumption Expenditures

 invconst(c)    Investment demand volume
 dstocconst(c)  Stock change demand volume

  ;

* #### Assignments

* ## Initial values for scaling variables

 SADJ0     = 1 ;
 SHADJ0    = 1 ;
 SEADJ0    = 1 ;
 IADJ0     = 1 ;

 DSHH0     = 0.0 ;
**JL 20.3.14
 DS0       = 0.0 ;
 DSEN0     = 0.0 ;

* ## Initial values for variables

 QINVD0(c)    = SAM(c,"KAP")/PQD0(c);

 INVEST0      = SAM("TOTAL","KAP");

 TOTSAV0      = SAM("KAP","TOTAL") ;


** JL 24.03.14

 KAPENT20(esoc) = SAM("KAP",esoc);

* ## initial savings rates

 shh0(h)$(SAM("TOTAL",h) - SAM("DIRTAX",h))
              = SAM("KAP",h)/(SAM("TOTAL",h) - SAM("DIRTAX",h)) ;

 sen0(e)$(YE0(e) - SAM("DIRTAX",e))
              = SAM("KAP",e)/(YE0(e) - SAM("DIRTAX",e)) ;

* ## base savings rates

 shhb(h)      = shh0(h) ;
 senb(e)      = sen0(e) ;

* ## absolute changes in base savings rates

 dabshh(h)    = 0.0 ;
 dabsen(e)    = 0.0 ;


* ## partial changes in savings rates

 shh01(h)     = 0.0 ;
 sen01(e)     = 0.0 ;

* ## Consumption Expenditures

** JL 10.4.
 invconst(c)   = SAM(c,"KAP")/(PQD0(c)) ;

 dstocconst(c) = SAM(c,"DSTOC")/PQD0(c) ;

* ------- FOREIGN INSTITUTIONS BLOCK -------------------------------------

PARAMETERS

* ## Initial values for variables

 YFWOR0(f)   Foreign factor income

* ## Savings Expenditures

* ## Transfer Expenditures

 factwor(f)  Factor payments from RoW (constant in foreign currency)
 howor(h)    Transfers to household from world (constant in foreign currency)
 entwor(e)   Transfers to enterprise e from world (constant in foreign currency)
 govwor      Transfers to government from world (constant in foreign currency)

  ;

* #### Assignments

* ## Initial values for variables

 YFWOR0(f)       = SAM("ROW",f) ;

* ## Transfer Expenditures

 factwor(f)      = SAM(f,"ROW")/ER0 ;

 howor(h)        = SAM(h,"ROW") ;

 entwor(e)       = SAM(e,"ROW") ;


$ONTEXT

ZK TAXACT added here to assure that it goes everywhere in the model from ROW to
GOV See (stage_w_samchk1.inc) also. Here all taxes are assumed to be under one account "DIRTAX"

* govwor          = SAM("GOVT","ROW")/ER0 + SAM("DIRTAX","ROW")/ER0 ;

$OFFTEXT

 govwor          = SAM("GOVT","ROW")/ER0 + SAM("TAXACT","ROW")/ER0 ;

Display govwor,factwor, howor, entwor; 

* ------- MARKET CLEARING BLOCK ------------------------------------------

PARAMETERS
* ## Initial values for variables

* # Account Closure

 KAPGOV0       Government Savings
 CAPWOR0       Current account balance

* # Absorption Closure

 VFDOMD0       Value of final domestic demand
 INVESTSH0     Value share of investment in total final domestic demand
 VGDSH0        Value share of Govt consumption in total final domestic demand
 VEDSH0(e)     Value share of Ent consumption in total final domestic demand

* ##### GDP

 GDPVA0        GDP from Value Added

*ZK
 GDP0          Gross Domestic Production
* # Slack

 WALRAS0       Slack variable for Walras's Law

  ;

* #### Assignments

* ## Initial values for variables
* # Account Closure

 KAPGOV0     = SAM("KAP","GOVT") ;
 CAPWOR0     = SAM("KAP","ROW") ;

display CAPWOR0;

* # Absorption Closure

 VFDOMD0     = SUM((c,h),SAM(c,h))
                  + SUM((c,e),SAM(c,e))
                  + SUM(c,SAM(c,"GOVT"))
                  + SUM(c,SAM(c,"KAP"))
                  + SUM(c,SAM(c,"dstoc")) ;

 INVESTSH0$VFDOMD0
             = (SUM(c,SAM(c,"KAP")) + SUM(c,SAM(c,"dstoc")))/VFDOMD0 ;

 VGDSH0$VFDOMD0
             = SUM(c,SAM(c,"GOVT"))/VFDOMD0 ;
 VEDSH0(e)$VFDOMD0
             = SUM(c,SAM(c,e))/VFDOMD0 ;

* ##### GDP
**JL 4.6.12

 GDPVA0      = SUM((f,a),SAM(f,a))
                 + ATAX0   + SUBTAX0
                 + WATTAX0 + WATATAX0                           
                  ;

** ZK

 GDP0        =       SUM((c,h),QCD0(c,h)*PQD0(c))
                  +  SUM(c,QGD0(c)*PQD0(c))
                  +  SUM(c,QINVD0(c)*PQD0(c))
                     + SUM(c,PQD0(c)*dstocconst(c))
                  +  (SUM(c,PWE0(c)*QE0(c)*ER0)
                  -  SUM(c,PWM0(c)*QM0(c)*ER0))
                     ;

* GDPVA0      = SUM((f,a),SAM(f,a))
*               + MTAX0 + ETAX0 + STAX0 + EXTAX0 + ITAX0 + FTAX0
*                 + WATTAX0 + WATATAX0;
                 
* # Slack

 WALRAS0   = 0 ;


 Free Variables

* ------- TRADE BLOCK ----------------------------------------------------

* #### Exchange Rate Block

 ER           Exchange rate  (domestic per world unit)

* #### Exports Block

 PWE(c)       World price of exports in dollars
 PE(c)        Domestic price of exports by activity a
 PD(c)        Consumer price for domestic supply of commodity c

 QE(c)        Domestic output exported by commodity c
 QD(c)        Domestic demand for commodity c

* #### Imports Block

 PWM(c)       World price of imports in dollars
 PM(c)        Domestic price of competitive imports of commodity c

 QM(c)        Imports of commodity c
 QQ(c)        Supply of composite commodity c

* ------- COMMODITY PRICE BLOCK ------------------------------------------

 PQS(c)       Supply price of composite commodity c
 PQD(c)       Purchaser price of composite commodity c
**JL 14.6.12
 PQDDIST(c,a) Sectoral proportion for (water) prices

* ------- NUMERAIRE PRICE BLOCK ------------------------------------------

 CPI          Consumer price index
 PPI          Producer (domestic) price index

* ------- PRODUCTION BLOCK -----------------------------------------------

 PX(a)        Composite price of output by activity a

* CES aggregation functions for Level 1 of production nest

 PVA(a)       Value added price for activity a
 PINT(a)      Price of aggregate intermediate input

 ADX(a)       Shift parameter for CES production functions for QX
 ADXADJ       Scaling Factor for Shift parameter on CES functions for QX
 DADX         Partial scaling factor for Shift parameter on CES functions for QX

 ADFD(f,a)    Shift parameter for factor and activity specific efficiency

 QX(a)        Domestic production by activity a

** JL 31.10.14
 QWATMUN                  Water consumption of municipalities
 QSEW                     Sewage "produced" by municipalities
 SHSEWMUN(cwat,sac)       Sewage "produced" by municipalities as share
 QSEWS                    Sewage collected in central sewer system
 SHSEWS                   Share of sewage collected in central sewer system
 SHSEWL                   Share of sewage lost during treatment



 QVA(a)       Quantity of aggregate value added for level 1 production

** JL 11.10.12
 QNW(a)       Water and Land composite quantity
 PNW(a)       Water and Land composite price

 PWAT(sac)    Composite price for water demand
 QWAT(sac)    Domestic demand for water composite

 QWAT2(c,sac) Domestic demand of (single) water commodities


* Leontief aggregation functions for Level 1 of production nest

 QINT(a)      Aggregate quantity of intermediates used by activity a

* CES aggregation functions for Level 2 of production nest

 ADVA(a)      Shift parameter for CES production functions for QVA
 ADVAADJ      Scaling Factor for Shift parameter on CES functions for QVA
 DADVA        Partial scaling factor for Shift parameter on CES functions for QVA

 Positive variable
 WF(f)        Price of factor f

 Free Variables

 WFDIST(f,a)  Sectoral proportion for factor prices
 FD(f,a)      Demand for factor f by activity a
 FS(f)        Supply of factor f

* Intermediate Input Demand

 QINTD(c)     Demand for intermediate inputs by commodity

* Commodity Output

 PXC(c)       Producer price of composite domestic output

 QXC(c)       Domestic production by commodity c

* Activity Output

 PXAC(a,c)    Activity commodity prices

 QXAC(a,c)    Domestic commodity output by each activity

* ------- FACTOR BLOCK ---------------------------------------------------

 YF(f)        Income to factor f
 YFDISP(f)    Factor income for distribution after depreciation
 
* ------- HOUSEHOLD BLOCK ------------------------------------------------
* ## Household Income

 YH(h)        Income to household h

* Household Expenditure

 HOHO(h,hp)   Inter household transfer
 HEXP(h)      Household consumption expenditure
 QCD(c,h)     Household consumption by commodity c

* ------- ENTERPRISE BLOCK -----------------------------------------------
* ## Enterprise Income

 YE(e)        Enterprise incomes

* ## Enterprise Expenditure

 QEDADJ       Enterprise demand volume Scaling Factor
 HEADJ        Scaling factor for enterprise transfers to households

 HOENT(h,e)   Household Income from enterprise e
 GOVENT(e)    Government income from enterprise e
 QED(c,e)     Enterprise consumption by commodity c
 VED(e)       Value of enterprise e consumption expenditure

* ------- GOVERNMENT BLOCK -----------------------------------------------

* #### Government Income Block

 TE(c)        Export taxes on exported comm'y c
 TM(c)        Tariff rates on imported comm'y c
 TS(c)        Sales tax rate
 TEX(c)       Excise tax rate
 TX(a)        Indirect tax rate
 TF(f,a)      Tax rate on factor use
 TYF(f)       Direct tax rate on factor income
 TYH(h)       Direct tax rate on households
 TYE(e)       Direct tax rate on enterprises
** JL 4.6.12
 TWAT(c)      Water commodity tax rate
 TWATA(c,a)   Water user tax rate

*ZK
 TA(c)        Aggregate tax rate
 TSUB(a)      Subsidies account rate 
 
* ## Government Tax Revenues

 MTAX         Tariff revenue
 ETAX         Export tax revenue
 DTAX         Direct Income tax revenue
 FYTAX        Factor Income tax revenue
 ITAX         Indirect tax revenue
 STAX         Sales tax revenue
 FTAX         Factor use tax revenue
 EXTAX        Excise tax revenue
** JL 4.6.12
 WATTAX       Water commodity tax revenue
 WATATAX      Water user tax revenue
 
**ZK
 ATAX         Aggregate Tax revenue
 SUBTAX       Subsidies account
 
* ## Tax Rate Adjustment Factors

 TEADJ        Export subsidy Scaling Factor
 TMADJ        Tarrif rate Scaling Factor
 TSADJ        Sales tax rate scaling factor
 TEXADJ       Excise tax rate scaling factor
 TXADJ        Indirect Tax Scaling Factor
 TFADJ        Factor Use Tax Scaling Factor
 TYFADJ       Factor Tax Scaling Factor
 TYHADJ       Household Income Tax Scaling Factor
 TYADJ        Household and Enterprise Income Tax Scaling Factor
 TYEADJ       Enterprise income tax Scaling Factor
** JL 4.6.12
 TWATADJ      Water commodity tax rate scaling factor
 TWATAADJ     Water user tax rate scaling factor
 
** ZK
 TAADJ        Aggregate Tax accounts Scaling Factor
 TSUBADJ      Subsidies accounts Scaling Factor

 DTE          Partial Export tax rate scaling factor
 DTM          Partial Tariff rate scaling factor
 DTS          Partial Sales tax rate scaling factor
 DTEX         Partial Excise tax rate scaling factor
 DTX          Partial Indirect tax rate scaling factor
 DTF          Uniform adjustment to factor use tax by activity
 DTYF         Partial direct tax on factor rate scaling factor
 DTYH         Partial direct tax on household rate scaling factor
 DTY          Partial direct tax on h'hold and enterprise rate scaling factor
 DTYE         Partial direct tax on enterprise rate scaling factor
** JL 4.6.12
 DTWAT(c)     Partial water tax rate scaling factor
 DTWATA       Uniform adjustment to water use tax by activity
 
** ZK
 DTA          Partial aggregate Tax accounts Scaling Factor
 DTSUB        Partial Subsidies accounts Scaling Factor
 
* ## Government Income

 YG           Government income

* #### Government Expenditure Block

 QGDADJ       Government consumption demand scaling factor
**JL 04.11.14
 QGDWADJ      Government water consumption demand scaling factor

 HGADJ        Scaling factor for government transfers to households
 EGADJ        Transfers to enterprises by government Scaling Factor

 QGD(c)       Government consumption demand by commodity c
 VGD          Value of Government consumption expenditure
 EG           Expenditure by government

* ------- KAPITAL BLOCK --------------------------------------------------

* ## Savings Block

 SHH(h)        Household savings rates
 SEN(e)        Enterprise savings rates
**JL 23.03.14
 KAPENT2(esoc) Savings of social ENT

 SADJ          Savings rate scaling factor for BOTH households and enterprises
 SHADJ         Savings rate scaling factor for households
 SEADJ         Savings rate scaling factor for enterprises

 DSHH          Partial household savings rate scaling factor
 DS            Partial household and enterprise savings rate scaling factor
 DSEN          Partial enterprise savings rate scaling factor

 TOTSAV        Total savings

* ## Investment Block

 IADJ          Investment scaling factor

 QINVD(c)      Investment demand by commodity c
 INVEST        Total investment expenditure

* ------- FOREIGN INSTITUTIONS BLOCK -------------------------------------

 YFWOR(f)      Foreign factor income

* ------- MARKET CLEARING BLOCK ------------------------------------------

* ##### Account Closure

 KAPGOV        Government Savings
 CAPWOR        Current account balance

* #### Absorption Closure

 VFDOMD        Value of final domestic demand
 INVESTSH      Value share of investment in total final domestic demand
 VGDSH         Value share of Govt consumption in total final domestic demand
 VEDSH(e)      Value share of Ent consumption in total final domestic demand

* ##### GDP

**ZK
 GDP           Gross Domestic Product
**ZK

 GDPVA         GDP from Value Added

* ##### Slack

 WALRAS        Slack variable for Walras's Law

       ;

* If the model is correctly specified WALRAS equals zero - a useful check
* See Devarajan et al (1994) Getting the Model Right


*################ 10. VARIABLE INITIALISATION ############################
$ontext
   This section initialises the variables to their base values.
$offtext




*## INITIAL VALUES OF VARIABLES FROM PARAMETER SPECIFICATION

* ------- NORMALISED PRICE BLOCK -----------------------------------------

 PD.L(c)      = PD0(c) ;

 PM.L(c)      = PM0(c) ;
 PE.L(c)      = PE0(c) ;

 PQS.L(c)     = PQS0(c) ;


 PXC.L(c)     = PXC0(c) ;

 PXAC.L(a,c)  = PXAC0(a,c) ;
 PX.L(a)      = PX0(a) ;

 ER.L         = ER0 ;

* ------- TRADE BLOCK ---------------------------------------------------

* #### Exports Block

 PWE.L(c)     = PWE0(c) ;

 QD.L(c)      = (SUM(a,SAM(a,c)/PD.L(c))) - QE0(c) ;

 QE.L(ce)     = QD.L(ce)*((PE.L(ce)/PD.L(ce))*((1-gamma(ce))
                 /gamma(ce)))**(1/(rhot(ce)-1)) ;

Display QD.L, PE.L,PD.L, QE.L ;
* #### Imports Block

 PWM.L(c)     = PWM0(c) ;

 QQ.L(c)      = QQ0(c) ;


 QM.L(c)$(cd(c) AND cm(c))
              = QD.L(c)*((PD.L(c)/PM.L(c))
                        *(delta(c)/(1-delta(c))))**(1/(1+rhoc(c))) ;

 QM.L(c)$(cdn(c) AND cm(c))
              = QQ.L(c) ;

* ------- COMMODITY PRICE BLOCK ------------------------------------------

** JL 15.2.
* PQD.L(c)     = PQS0(c) * (1 + ts0(c) + tex0(c)+ twat0(c)) ;
**ZK  
 PQD.L(c)     = PQD0(c) ;
** 15.6.12
 PQDDIST.L(c,a)      = PQDDIST0(c,a);

Display PQD.L, PQDDIST.L;


* ------- NUMERAIRE PRICE BLOCK ------------------------------------------

 CPI.L        = CPI0 ;
 PPI.L        = PPI0 ;

* ------- PRODUCTION BLOCK -----------------------------------------------


* CES aggregation functions for Level 1 of production nest

 PVA.L(a)     = PVA0(a) ;

** AO
 PINT.L(a) = PINT0(a) ;

 QX.L(a)      = SAM("TOTAL",a)/PX.L(a) ;

* Leontief aggregation functions for Level 1 of production nest

 ADXADJ.L     = ADXADJ0 ;

 DADX.L       = DADX0 ;

 ADX.L(a)     = ((adxb(a) + dabadx(a)) * ADXADJ.L)
                                      + (DADX.L * adx01(a)) ;

** AO
 QINT.L(a)    = QINT0(a) ;


 QVA.L(a)     = QVA0(a) ;
** JL 12.10.12
 QNW.L(a)     = QNW0(a) ;
 PNW.L(a)     = PNW0(a) ;
** JL 31.10.14
 QWAT2.L(c,sac) = QWAT20(c,sac);

* CES aggregation functions for Level 2 of production nest

 ADVAADJ.L    = ADVAADJ0 ;

 DADVA.L      = DADVA0 ;

 ADVA.L(a)    = ((advab(a) + dabadva(a)) * ADVAADJ.L)
                                      + (DADVA.L * adva01(a)) ;

 ADFD.L(f,a)  = ADFD0(f,a) ;

 FD.L(f,a)    = FD0(f,a) ;

 FS.L(f)      = SUM(a,FD.L(f,a)) ;

 WF.L(f)      = SUM(a,SAM(f,a))/FS.L(f) ;

 WFDIST.L(f,a)$FD.L(f,a)
              = (SAM(f,a)/FD.L(f,a))/WF.L(f) ;



 WFDIST.L(f,a)$(FD.L(f,a) EQ 0)
              = 0.0 ;

* Intermediate Input Demand

 QINTD.L(c)   = SUM(a,comactco(c,a)*QX.L(a)) ;

* Commodity Output

** JL 17.10.12
 QXC.L(c)$cxac(c)     = adxc(c)*(SUM(a$deltaxc(a,c),deltaxc(a,c)
                             *QXAC0(a,c)**(-rhocxc(c))))**(-1/rhocxc(c)) ;

 QXC.L(c)$cxacn(c)     =SUM(a,QXAC0(a,c));

* Activity Output

 QXAC.L(a,c)  = ioqxacqx(a,c) * QX.L(a) ;

* ------- FACTOR BLOCK ---------------------------------------------------

 YF.L(f)      = SUM(a,WF.L(f)*WFDIST.L(f,a)*FD.L(f,a))
                             + (factwor(f)*ER.L) ;

 YFDISP.L(f)  = (YF.L(f) * (1- deprec(f)))*(1- tYf0(f)) ;

* ------- HOUSEHOLD BLOCK ------------------------------------------------
* ## Household Income

 YH.L(h)        = SUM(f,hovash(h,f)*YFDISP.L(f))
                             + SUM(hp,HOHO0(h,hp))
                             + SUM(e,HEADJ0*hoentconst(h,e) * CPI.L)
                             + (HGADJ0*hogovconst(h) * CPI.L)
                             + (howor(h)*ER.L);

* ## Household Expenditure

 HOHO.L(h,hp)   = hohosh(h,hp)
                *((YH.L(h) * (1 - tyh0(h))) * (1 - shh0(h))) ;

 HEXP.L(h)      = ((YH.L(h) * (1 - tyh0(h))) * (1 - shh0(h)))
                    - SUM(hp,HOHO.L(hp,h)) ;

 QCD.L(c,h)$comhoav(c,h)    = (comhoav(c,h)*HEXP.L(h))/PQD.L(c) ;


* ######## ENTERPRISE BLOCK
* ## Enterprise Income

 YE.L(e)        = SUM(f,entvash(e,f)*YFDISP.L(f))
                             + (EGADJ0*entgovconst(e)*CPI.L)
                             + (entwor(e)*ER.L) ;

* ## Enterprise Expenditure

 QEDADJ.L       = QEDADJ0 ;

 QED.L(c,e)     = QEDADJ.L*qedconst(c,e) ;

 HOENT.L(h,e)   = hoentsh(h,e)
                 * (((YE.L(e) * (1 - tye0(e))) * (1 - sen0(e)))
                    - SUM(c,QED.L(c,e)*PQD.L(c)))
**JL 20.03.14
*                  - (hoentconst(h,e)*CPI.L*HEADJ0)
;

 GOVENT.L(e)    = goventsh(e)
                 * (((YE.L(e) * (1 - tye0(e))) * (1 - sen0(e)))
                    - SUM(c,QED.L(c,e)*PQD.L(c))) ;

 VED.L(e)       = SUM(c,QED.L(c,e)*PQD.L(c)) ;

* ------- GOVERNMENT BLOCK -----------------------------------------------

* #### Government Income Block

* ## Government Taxes

 TEADJ.L      = TEADJ0  ;
 TMADJ.L      = TMADJ0  ;
 TSADJ.L      = TSADJ0  ;
 TEXADJ.L     = TEXADJ0 ;
 TXADJ.L      = TXADJ0  ;
 TFADJ.L      = TFADJ0  ;
 TYFADJ.L     = TYFADJ0 ;
 TYHADJ.L     = TYHADJ0 ;
 TYADJ.L      = TYADJ0  ;
 TYEADJ.L     = TYEADJ0 ;
**JL 4.6.12
 TWATADJ.L    = TWATADJ0;
 TWATAADJ.L   = TWATAADJ0;
**ZK 
 TAADJ.L      = TAADJ0;
 TSUBADJ.L    = TSUBADJ0;
 
 DTE.L        = DTE0    ;
 DTM.L        = DTM0    ;
 DTS.L        = DTS0    ;
 DTEX.L       = DTEX0   ;
 DTX.L        = DTX0    ;
 DTF.L        = DTF0    ;
 DTYF.L       = DTYF0   ;
 DTYH.L       = DTYH0   ;
 DTY.L        = DTY0    ;
 DTYE.L       = DTYE0   ;
** JL 4.6.12
 DTWAT.L(c)   = DTWAT0(c);
 DTWATA.L     = DTWATA0 ;
**ZK
 DTA.L        = DTA0    ;
 DTSUB.L      = DTSUB0  ;


*----------------------------------------------------------
 TM.L(c)      = ((tmb(c) + dabtm(c))* TMADJ.L)
                         + (DTM.L*tm01(c)*tm0(c)) ;


 TE.L(c)      = ((teb(c) + dabte(c))* TEADJ.L)
                       + (DTE.L*te01(c)*te0(c)) ;

 TS.L(c)      = ((tsb(c) + dabts(c))* TSADJ.L)
                         + (DTS.L*ts01(c)*ts0(c)) ;

 TEX.L(c)     = ((texb(c) + dabtex(c))* TEXADJ.L)
                         + (DTEX.L*tex01(c)*tex0(c)) ;

 TX.L(a)      = ((txb(a) + dabtx(a))* TXADJ.L)
                         + (DTX.L*tx01(a)*tx0(a)) ;

 TF.L(f,a)    = ((tfb(f,a) + dabtf(f,a))* TFADJ.L)
                         + (DTF.L*tf01(f,a)) ;

 TYF.L(f)     = ((tyfb(f) + dabtyf(f))* TYFADJ.L)
                      + (DTYF.L*tyf01(f)*tyf0(f)) ;

 TYH.L(h)     = ((tyhb(h) + dabtyh(h))* TYHADJ.L * TYADJ.L)
                      + (DTYH.L*DTY.L*tyh01(h)*tyh0(h)) ;

 TYE.L(e)     = ((tyeb(e) + dabtye(e))* TYEADJ.L * TYADJ.L)
                        + (DTYE.L*DTY.L*tye01(e)*tye0(e)) ;
** JL 4.6.12
 TWAT.L(c)    = ((twatb(c) + dabtwat(c))* TWATADJ.L)
                         + (DTWAT.L(c)*twat01(c)*twat0(c)) ;

 TWATA.L(c,a)    = ((twatab(c,a) + dabtwata(c,a))* TWATAADJ.L)
                         + (DTWATA.L*twata01(c,a)) ;
                         
**ZK                         
 TA.L(c)        = ((tab(c) + dabta(c))*TAADJ.L)
                         + (DTA.L*ta01(c)*TA0(c));
                         
 TSUB.L(a)      = ((tsubb(a) + dsubbta(a))*TSUBADJ.L)
                           + (DTSUB.L*tsub01(a)*TSUB0(a));


 MTAX.L       = SUM(c,TM.L(c)*PWM.L(c)*ER.L*QM.L(c)) ;

 ETAX.L       = SUM(c,TE.L(c)*PWE.L(c)*ER.L*QE.L(c)) ;

 STAX.L       = SUM(c,TS.L(c)*PQS.L(c)*QQ.L(c)) ;

** JL 4.6.12  , 12.6.12 , 14.6.12
 WATTAX.L     =SUM(c,TWAT.L(c)*PQS.L(c)*QQ.L(c));
** JL 15.6.12
 WATATAX.L    =SUM((c,a), TWATA.L(c,a)*PQD.L(c)*PQDDIST.L(c,a)*QWAT2.L(c,a));

 EXTAX.L      = SUM(c,TEX.L(c)*PQS.L(c)*QQ.L(c)) ;

 ITAX.L       = SUM(a,TX.L(a)*PX.L(a)*QX.L(a)) ;

 FTAX.L       = SUM((f,a), TF.L(f,a)*WF.L(f)*WFDIST.L(f,a)*FD.L(f,a)) ;

 FYTAX.L      = SUM(f,TYF.L(f)*(YF.L(f) * (1- deprec(f)))) ;

 DTAX.L       = SUM(h,TYH.L(h)*YH.L(h))
               + SUM(e,TYE.L(e)*YE.L(e)) ;
               
 ATAX.L       = SUM(c,TA.L(c)*PQS.L(c)*QQ.L(c)) ;
 
 SUBTAX.L     = SUM(a,TSUB.L(a)*PX.L(a)*QX.L(a)) ;
 
Display ATAX.L, SUBTAX.L, QQ.L;


* ## Government Income
** JL 4.6.12
 YG.L         = MTAX.L + ETAX.L
                + STAX.L + EXTAX.L + ITAX.L + FTAX.L
                + FYTAX.L + DTAX.L  +WATTAX.L +WATATAX.L
                 + SUM(f,govvash(f)*YFDISP.L(f))
                 + SUM(e,GOVENT0(e)) + (govwor*ER.L);

display DTAX.L;

* #### Government Expenditure Block

 QGDADJ.L     = QGDADJ0 ;
**JL 04.11.14
 QGDWADJ.L    = QGDWADJ0;
 HGADJ.L      = HGADJ0  ;
 HEADJ.L      = HEADJ0  ;
 EGADJ.L      = EGADJ0  ;

**JL 04.11.14
* QGD.L(c)     = QGDADJ.L*comgovconst(c) ;
 QGD.L(cnwat)     = QGDADJ.L*comgovconst(cnwat) ;
 QGD.L(cwat)     = QGDWADJ.L*comgovconst(cwat) ;

 VGD.L       = SUM(c,QGD.L(c)*PQD.L(c)) ;

 EG.L         = SUM(c,QGD.L(c)*PQD.L(c))
                 + SUM(h,hogovconst(h)*CPI.L*HGADJ.L)
                 + SUM(e,EGADJ.L*entgovconst(e)*CPI.L) ;

* ------- KAPITAL BLOCK --------------------------------------------------

* ## Savings Block

 SADJ.L       = SADJ0   ;
 SHADJ.L      = SHADJ0  ;
 SEADJ.L      = SEADJ0  ;

 DSHH.L       = DSHH0   ;
 DS.L         = DS0     ;
 DSEN.L       = DSEN0   ;

 SHH.L(h)     = ((shh0(h) + dabshh(h)) * SHADJ.L * SADJ.L)
                   + (DSHH.L * DS.L * shh01(h)) ;

 SEN.L(e)     = ((sen0(e) + dabsen(e)) * SEADJ.L * SADJ.L)
                   + (DSEN.L * DS.L * sen01(e)) ;
**JL 24.03.14
 KAPENT2.L(esoc)       = KAPENT20(esoc);
**JL 24.03.14
 TOTSAV.L     = SUM(f,(deprec(f)*YF.L(f)))
                 + SUM(h,(YH.L(h) * (1 - TYH.L(h))) * SHH.L(h))
                 + SUM(ecom,(YE.L(ecom) * (1 - TYE.L(ecom))) * SEN.L(ecom))
                 + SUM(esoc,KAPENT2.L(esoc))
                 + KAPGOV0
                 + (CAPWOR0*ER.L) ;

* ## Investment Block

 IADJ.L       = IADJ0   ;

 INVEST.L     = TOTSAV.L ;

 QINVD.L(c)   = (IADJ.L*invconst(c)) ;

* ------- FOREIGN INSTITUTIONS BLOCK -------------------------------------

 YFWOR.L(f)   = worvash(f)*YFDISP.L(f) ;

* ------- MARKET CLEARING BLOCK ------------------------------------------

* ##### Account Closure

 KAPGOV.L     = KAPGOV0 ;

*------- KS_11_02_11 -----
$ontext
*--- here is the original ---
 CAPWOR.L     = SUM(cm,PWM.L(cm)*QM.L(cm))
                + (SUM(f,YFWOR.L(f))/ER.L)
                - SUM(ce,PWE.L(ce)*QE.L(ce))
                - SUM(h,howor(h))
                - SUM(e,entwor(e))
                - govwor
                - SUM(f,factwor(f)) ;
$offtext
*---------- edited --- include direct tax on the ROW
CAPWOR.L     = SUM(cm,PWM.L(cm)*QM.L(cm))
                + (SUM(f,YFWOR.L(f))/ER.L)
                - SUM(ce,PWE.L(ce)*QE.L(ce))
                - SUM(h,howor(h))
                - SUM(e,entwor(e))
                - govwor
                - SUM(f,factwor(f)) ;



* #### Absorption Closure


 VFDOMD.L     = SUM(c, PQD.L(c) * (SUM(h,QCD.L(c,h)) + SUM(e,QED.L(c,e))
                                   + QGD.L(c) + QINVD.L(c) + dstocconst(c))) ;

 INVESTSH.L   = INVEST.L/VFDOMD.L ;

 VGDSH.L      = VGD.L/VFDOMD.L ;

 VEDSH.L(e)   = VED.L(e)/VFDOMD.L ;

* ##### GDP
$ontext
*---------------- KS_17_02_11 ------------------------
The GDPVA was calculated here as follows:

GDPVA.L      = SUM((f,a),WF.L(f)*WFDIST.L(f,a)*FD.L(f,a)) + ITAX.L  ;
 while in the core model file and specifically in the equation block it is as
 follows:

GDPVAEQ..         GDPVA =E= SUM((f,a),WF(f)*WFDIST(f,a)*FD(f,a))
                         + MTAX + ETAX + STAX + EXTAX + ITAX + FTAX;

infes is shown in the final solution and specifically in the mentioned equation,
 hence the equation was made similar to the one of the core model file. Revision
        needed here to assure that.

$offtext
*--------------------------------------------------------
** JL 4.6.12
 GDPVA.L      = SUM((f,a),WF.L(f)*WFDIST.L(f,a)*FD.L(f,a))
                 + ATAX.L + SUBTAX.L 
                 + WATTAX.L + WATATAX.L
                  ;
                  
 GDP.L        =      SUM((c,h),QCD.L(c,h)*PQD.L(c))
                  +  SUM(c,QGD.L(c)*PQD.L(c))
                  +  SUM(c,QINVD.L(c)*PQD.L(c))
                     + SUM(c,PQD.L(c)*dstocconst(c))
                  +  (SUM(c,PWE.L(c)*QE.L(c)*ER.L)
                  -  SUM(c,PWM.L(c)*QM.L(c)*ER.L))
                     ;

$ONTEXT
 GDPVA.L      = SUM((f,a),WF.L(f)*WFDIST.L(f,a)*FD.L(f,a))
                 + MTAX.L + ETAX.L + STAX.L + EXTAX.L + ITAX.L + FTAX.L
                 + WATTAX.L + WATATAX.L ;
$OFFTEXT
                 
* ##### Slack

 WALRAS.L     = WALRAS0 ;

 OPTION DECIMALS = 6 ;

*------------- water variables---------------------------------

** AO
 QWAT.L(a)  = QWAT0(a) ;
 PWAT.L(a)  = PWAT0(a) ;

** JL 1.11.14

 QWATMUN.L               =   QWATMUN0       ;
 QSEW.L                  =   QSEW0          ;
 SHSEWMUN.L(cwat,sac)    =   SHSEWMUN0(cwat,sac)      ;
 QSEWS.L                 =   QSEWS0         ;
 SHSEWS.L                =   SHSEWS0        ;
 SHSEWL.L                =   SHSEWL0        ;

*-----------------end of stage_w variable initialisation --------------------


EQUATIONS

*################ 14. EQUATION DECLARATIONS ###############################

* ------- TRADE BLOCK ----------------------------------------------------

* #### Exports Block

 PEDEF(c)        Domestic price of exports by commodity c

 CET(c)          CET function for domestic production
 ESUPPLY(c)      Export supply function (FOC)
 EDEMAND(c)      Export demand function
 CETALT(c)       CET fn for dom prodn with no exports OR only exported

* #### Imports Block

 PMDEF(c)        Domestic price of competitive imports of commodity c

 ARMINGTON(c)    Composite commodity aggregation function
 COSTMIN(c)      Cost minimisation for composite commodity (FOC)
 ARMALT(c)       Comp commody aggn fn with no imports OR no dom prodn

* ------- COMMODITY PRICE BLOCK ------------------------------------------

 PQSDEF(c)       Supply price of composite commodity c
 PQDDEF(c)       Purchaser price of composite commodity c
 PXCDEF(c)       Producer price for composite domestic output

* ------- NUMERAIRE PRICE BLOCK ------------------------------------------

 CPIDEF          Consumer price index
 PPIDEF          Producer (domestic) price index

* ------- PRODUCTION BLOCK -----------------------------------------------

 PXDEF(a)        Composite price of output by activity a

* CES aggregation functions for Level 1 of production nest

 PVADEF(a)       Value added price for activity a level 1 of nest
 PINTDEF(a)      Aggregate intermed input price for activity a level 1 of nest

 ADXEQ(a)        Shift parameter for CES production functions for QX
 QXPRODFN(a)     Production function for QX in activity a level 1 of nest
 QXFOC(a)        FOC for production function for QX level 1 of nest

* Leontief aggregation functions for Level 1 of production nest

 QINTDEF(a)      Leontief intermediate aggregation for Level 1 of nest
 QVADEF(a)       Leontief value added aggregation for Level 1 of nest

* CES aggregation functions for Level 2 of production nest

 ADVAEQ(a)        Shift parameter for CES production functions for QVA
 QVAPRODFN(a)     CES prod'n func'n

 QVAFOC1(f2,a)    FOC for for factor aggregate
 QVAFOC2(a)       FOC for land-water aggregate

 QINTDEQ(c)      Intermediate input demand by commodity

* Leontief aggregation functions for Level 2 of production nest

 QVAEQ1(f2,a)     Leontief value added aggregation for Level 2 of nest
 QVAEQ2(a)        Leontief value added aggregation for Level 2 of nest

 PVAEQ(a)  Factor prices in Leontief value added aggregation for Level 2 of nest

** JL 12.10.12
* CES aggregation functions for Level 3 of production nest

 QNWPRODFN1(a)   Prod'n func'n of 3. level

 QNWFOC1(f3,a)   FOC for activ's which consume some water (for factor aggregate)
 QNWFOC2(a)      FOC for activ's which cosume some water (for water aggregate)

* Leontief aggregation for land water nest (if no land is used)
 QNWEQ1(f3,a)     Leontief aggregation of land and water quantities
 QNWEQ2(a)        Leontief aggregation of land and water quantities

 PNWEQ(a)         Leontief aggregation of land and water quantities

* CES aggregation functions for Level 4 of production nest
** JL 10.1.14
 QWATEQ1(c,a) Leontief agg. for water com. (also act. using only one water type)
 PWATEQ(a)    Composite price for water

 WATDPRODFN(a)   Level 4 Prodn Fns
 WATDFOC(cwat,a) FOC for level 4 Prodn Fns
** JL 12.02.14
 QWATEQ2(f4,a)   Water factor aggregation
**JL 15.01.14
 FD4FOC(f4,a)    FOC for water producing activities

* Commodity Output

 COMOUT(c)       Domestic differentiated commodity production
 COMOUTFOC(a,c)  FOC for Domestic differentiated commodity production


 COMOUT2(c)      Domestic homogenous commodity production
 COMOUTFOC2(a,c) FOC for Domestic homogenous commodity production

* Activity Output

 ACTIVOUT(a,c)   Domestic activity output

* ------- FACTOR BLOCK ---------------------------------------------------

 YFEQ(f)         Factor incomes
 YFDISPEQ(f)     Factor income for distribution after depreciation
 



* ------- HOUSEHOLD BLOCK ------------------------------------------------
* ## Household Income

 YHEQ(h)         Household incomes

* Household Expenditure

 HOHOEQ(h,hp)    Inter household transfer
 HEXPEQ(h)       Household consumption expenditure
 QCDEQ(c,h)      Household commodity consumption

* ------- ENTERPRISE BLOCK -----------------------------------------------
* ## Enterprise Income

 YEEQ(e)         Enterprise incomes

* ## Enterprise Expenditure

 QEDEQ(c,e)      Enterprise commodity consumption
**JL 23.03.14
 HOENTEQ(h,e)    Household Income from enterprise e

 HOENTEQ2(h,e)   Household Income from ent2
 VEDEQ(e)        Value of enterprise consumption expenditure
 GOVENTEQ(e)     Government income from enterprise e

* ------- GOVERNMENT BLOCK -----------------------------------------------

* #### Government Income Block

* ## Government Tax Rates

 TEDEF(c)        Export tax rates on exports of comm'y c
 TMDEF(c)        Tariff rates on imports of comm'y c
 TSDEF(c)        Sales tax rates
 TEXDEF(c)       Excise tax rates
 TXDEF(a)        Indirect tax rates
 TFDEF(f,a)      Factor use tax rates paid by activities
 TYFDEF(f)       Factor income tax rates
 TYHDEF(h)       Household income tax rates
 TYEDEF(e)       Enterprise income tax rates
** JL 11.6.12
 TWATDEF(c)      Water tax rates(on water commodity c)
 TWATADEF(c,a)   Water use tax rate on activities
 
**ZK
 TADEF(c)        Aggregate tax rate
 TSUBDEF(a)      Subsidies account rate



* ## Government Tax Revenues

 MTAXEQ          Import tariff taxes
 ETAXEQ          Export taxes
 STAXEQ          Sales taxes
 EXTAXEQ         Excise taxes
 ITAXEQ          Indirect taxes on activities
 FTAXEQ          Factor use tax revenue
 FYTAXEQ         Factor income taxes
 DTAXEQ          Direct taxes on households and enterprises
** JL 11.6.12
 WATTAXEQ        Water tax revenue
 WATATAXEQ       Water use tax revenue

**ZK
 ATAXEQ          Aggregate Tax revenue
 SUBTAXEQ        Subsidies revenue 
  


* ## Government Income

 YGEQ            Government income

* #### Government Expenditure Block

 QGDEQ(c)        Government commodity consumption
 QGDEQ2(c)       Government water consumption
 EGEQ            Government expenditure
 VGDEQ           Value of Government consumption expenditure

* ------- KAPITAL BLOCK --------------------------------------------------

* ## Savings Block

 SHHDEF(h)        Household savings rates
** JL 01.05.14
 SENDEF(ecom)     Commercial Enterprise savings rates
**JL 23.03.14
 KAPENT2DEF(esoc) Variable saving rate of social ent
 TOTSAVEQ         Total Savings

* ## Investment Block

 QINVDEQ(c)       Investment demand in quantities
 INVESTEQ         Investment expenditure

* ------- FOREIGN INSTITUTIONS BLOCK -------------------------------------

 YFWOREQ(f)       Foreign factor income

* ------- MARKET CLEARING BLOCK ------------------------------------------

* ##### Account Closure

 FMEQUIL(f)      Factor market equilibrium

** JL 19.08.14
 FMEQUIL2(sew)   Market equilibrium for sewage

 QEQUIL(c)       Commodity market equilibrium
 GOVEQUIL        Government equilibrium
 CAEQUIL         Current account balance (foreign trade equilibrium)


* #### Absorption Closure

 VFDOMDEQ        Value of final domestic demand
 INVESTSHEQ      Value share of investment in total final domestic demand
 VGDSHEQ         Value share of Govt consumption in total final domestic demand
 VEDSHEQ(e)      Value share of Ent consumption in total final domestic demand

* ##### GDP
**ZK
 GDPEQ           Gross Domestic Product
**ZK
 GDPVAEQ         GDP from Value Added

* ##### Slack

 WALRASEQ        Savings and Investment equilibrium

  ;

*################ 15. EQUATIONS ASSIGNMENTS ##############################

* ------- TRADE BLOCK ----------------------------------------------------

* #### Exports Block

* For some c there are no exports hence only implement for ce(c)

 PEDEF(c)$ce(c)..  PE(c) =E= PWE(c) * ER * (1 - TE(c)) ;



* For some c there are no exports hence only implement for ce(c)

 CET(c)$(cd(c) AND ce(c))..
                  QXC(c) =E= at(c)*(gamma(c)*QE(c)**rhot(c) +
                                 (1-gamma(c))*QD(c)**rhot(c))**(1/rhot(c)) ;

 ESUPPLY(c)$(cd(c) AND ce(c))..
                   QE(c) =E= QD(c)*((PE(c)/PD(c))*((1-gamma(c))
                                 /gamma(c)))**(1/(rhot(c)-1)) ;

 EDEMAND(c)$ced(c)..
                   QE(c) =E= econ(c)*((PWE(c)/pwse(c))**(-eta(c))) ;

* For c with no exports OR for c with no domestic production
* domestic supply is by CETALT
** JL 09.04.14
 CETALT(c)$((cd(c) AND cen(c)) OR (cdn(c) AND ce(c)))..
                  QXC(c) =E= QD(c) + QE(c) ;


* #### Imports Block

* For some c there are no imports hence only implement for cm(c)

 PMDEF(c)$cm(c)..  PM(c) =E= (PWM(c) *(1 + TM(c))) * ER ;

* For some c there are no imports or domestic production
* hence only implement for cd(c) AND cm(c)

 ARMINGTON(c)$(cx(c) AND cm(c) )..
                  QQ(c)  =E= ac(c)*(delta(c)*QM(c)**(-rhoc(c)) +
                                 (1-delta(c))*QD(c)**(-rhoc(c)))**(-1/rhoc(c)) ;


 COSTMIN(c)$(cx(c) AND cm(c))..
                   QM(c) =E= QD(c)*((PD(c)/PM(c))*(delta(c)/
                                 (1-delta(c))))**(1/(1+rhoc(c))) ;

* For c with no imports OR for c with no domestic production
* supply is from ARMALT

 ARMALT(c)$((cx(c) AND cmn(c)) OR (cxn(c) AND cm(c)))..
                    QQ(c) =E= QD(c) + QM(c) ;
                    

* ------- COMMODITY PRICE BLOCK ------------------------------------------
** JL 11.6.12
 PQDDEF(c)$(cd(c) OR cm(c))..
                   PQD(c) =E= PQS(c) * (1 + TS(c) + TEX(c)+ TWAT(c) + TA(c)) ;


 PQSDEF(c)$((cd(c) OR cm(c)))..
            PQS(c)*QQ(c) =E= (PD(c)*QD(c))+(PM(c)*QM(c)) ;


 PXCDEF(c)$(cx(c))..
            PXC(c)*QXC(c) =E= (PD(c)*QD(c)) + (PE(c)*QE(c))$ce(c) ;
            
* ------- NUMERAIRE PRICE BLOCK ------------------------------------------

 CPIDEF..            CPI =E= SUM(c,comtotsh(c)*PQD(c)) ;

 PPIDEF..            PPI =E= SUM(c,vddtotsh(c)*PD(c)) ;
 
* ------------------------PRODUCTION BLOCK -------------------------------------

** JL---------------------------- Level 1---------------------------------------

 PXDEF(a)$QINT0(a)..   PX(a) =E= SUM(c,ioqxacqx(a,c)*PXAC(a,c)) ;

 PVADEF(a)..
               PX(a)*(1 - (TX(a) + TSUB(a)))*QX(a) =E= (PVA(a)*QVA(a)) + (PINT(a)*QINT(a)) ;

**JL 11.4.
 PINTDEF(a)..     PINT(a) =E= SUM(c$cnwat(c),ioqtdqd(c,a) * PQD(c)) ;

 ADXEQ(a)..       ADX(a) =E= ((adxb(a) + dabadx(a)) * ADXADJ)
                                      + (DADX * adx01(a)) ;

* CES aggregation functions for Level 1 of production nest
 QXPRODFN(a)$aqx(a)..
                   QX(a) =E= ADX(a)*(deltax(a)*QVA(a)**(-rhocx(a))
                              + (1-deltax(a))*QINT(a)**(-rhocx(a)))
                              **(-1/rhocx(a)) ;

 QXFOC(a)$aqx(a)..
                  QVA(a) =E= QINT(a)*((PINT(a)/PVA(a))*(deltax(a)/
                                 (1-deltax(a))))**(1/(1+rhocx(a))) ;

* Leontief aggregation functions for Level 1 of production nest

**JL 11.04.14

 QINTDEF(a)$aqxn(a) ..
                 QINT(a) =E= ioqintqx(a) * QX(a) ;

 QVADEF(a)$aqxn(a)..
                  QVA(a) =E= ioqvaqx(a) * QX(a) ;
                  
** JL------------------------ Level 2------------------------------------------

* CES aggregation functions for Level 2 of production nest

 ADVAEQ(a)..     ADVA(a) =E= ((advab(a) + dabadva(a)) * ADVAADJ)
                                      + (DADVA * adva01(a)) ;

** JL 7.2.14
* CES Prod'n func'n
 QVAPRODFN(a)$(QVA0(a) and afx(a))..
         QVA(a)  =E= ADVA(a)*(SUM(f2$deltava(f2,a), deltava(f2,a)
                                 *(ADFD(f2,a)* FD(f2,a))**(-rhocva(a)))
                              +(deltava("cnw",a)*QNW(a)
                                 **(-rhocva(a)))$deltava("cnw",a))
                              **(-1/rhocva(a));

* FOC for the factor composite
 QVAFOC1(f2,a)$(deltava(f2,a)and afx(a) )..
         WF(f2)*WFDIST(f2,a)*(1 + TF(f2,a) )
                       =E= PVA(a)*QVA(a)
                          *(SUM(f2p$deltava(f2p,a),deltava(f2p,a)
                          *(ADFD(f2p,a)*FD(f2p,a))**(-rhocva(a)))
                                 + (deltava("cnw",a)*QNW(a)
                                 **(-rhocva(a)))$deltava("cnw",a))**(-1)
                          * deltava(f2,a)*ADFD(f2,a)**(-rhocva(a))
                          * FD(f2,a)**(-rhocva(a)-1) ;


* FOC for the land-water composite
 QVAFOC2(a)$(afx(a)and deltava("cnw",a) )..
         PNW(a) =E= PVA(a)*QVA(a)
                       *(SUM(f2p$deltava(f2p,a),deltava(f2p,a)
                       *(ADFD(f2p,a)*FD(f2p,a))**(-rhocva(a)))
                                 + deltava("cnw",a)*QNW(a)
                                 **(-rhocva(a)))**(-1)
                      * deltava("cnw",a)*QNW(a)**(-rhocva(a)-1) ;


** -----------------JL 25.11. --------------------------------------------------

* Leontief on value added side of 2. Level
** factors

 QVAEQ1(f2,a)$afxn(a)..
                FD(f2,a)*ADFD(f2,a) =E= ioqnwqva(f2,a)*QVA(a)  ;

** JL 10.12.13    water land aggregate
 QVAEQ2(a)$afxn(a)..
                QNW(a) =E= ioqnwqva("cnw",a)*QVA(a);

 PVAEQ(a)$afxn(a)..
               PVA(a) =E= PNW(a)* ioqnwqva("cnw",a)
                     +SUM(f2,ioqnwqva(f2,a)*WF(f2)*WFDIST(f2,a)*(1 + TF(f2,a)));

* Intermediate Input Demand

**JL 12.4.12  31.5.12
 QINTDEQ(c)..   QINTD(c) =E= SUM(a,ioqtdqd(c,a)*QINT(a)) + SUM(a, QWAT2(c,a));

** JL-------------------------- Level 3-----------------------------------------
* CES
* Prod'n func'n for activ's which consume land
** JL 11.01.14
 QNWPRODFN1(a)$(af3x(a) and an(a) )..
         QNW(a)  =E= adnw(a)*(SUM(f3$deltanw(f3,a),
                     deltanw(f3,a)*(ADFD(f3,a)* FD(f3,a))**(-rhonw(a)))
                    +(deltanw("cwat",a)*QWAT(a)**(-rhonw(a)))$deltanw("cwat",a))
                    **(-1/rhonw(a));

* FOC for the factor composite

 QNWFOC1(f3,a)$(af3x(a) and deltanw(f3,a))..
         WF(f3)*WFDIST(f3,a)*(1 + TF(f3,a))
                       =E= PNW(a)*QNW(a)
                          *(SUM(f3p$deltanw(f3p,a),deltanw(f3p,a)
                          *(ADFD(f3p,a)*FD(f3p,a))**(-rhonw(a)))
                                 + (deltanw("cwat",a)*QWAT(a)
                                 **(-rhonw(a)))$deltanw("cwat",a))**(-1)
                          * deltanw(f3,a)*ADFD(f3,a)**(-rhonw(a))
                          * FD(f3,a)**(-rhonw(a)-1) ;


* FOC for the water-commodity composite

 QNWFOC2(a)$(af3x(a) and deltanw("cwat",a) and SUM(f3,deltanw(f3,a)) )..
         PWAT(a) =E= PNW(a)*QNW(a)
                       *(SUM(f3p$deltanw(f3p,a),deltanw(f3p,a)
                       *(ADFD(f3p,a)*FD(f3p,a))**(-rhonw(a)))
                       + deltanw("cwat",a)*QWAT(a) **(-rhonw(a)))**(-1)
                      * deltanw("cwat",a)*QWAT(a)**(-rhonw(a)-1) ;

** JL 29.11.13 Leontief-production function or act. which do not consume land

 QNWEQ1(f3,a)$af3xn(a)..
           FD(f3,a)*ADFD(f3,a) =E= ioqwatqnw(f3,a)*QNW(a) ;

 QNWEQ2(a)$(af3xn(a)or ann(a))..
           QWAT(a) =E= ioqwatqnw("cwat",a)*QNW(a) ;

 PNWEQ(a)$ (af3xn(a) or ann(a))..
           PNW(a) =E= PWAT(a)*ioqwatqnw("cwat",a)
                   +SUM(f3,ioqwatqnw(f3,a)* WF(f3)*WFDIST(f3,a)*(1 + TF(f3,a)));


** JL------------------------------- Level 4------------------------------------
* CES
 WATDPRODFN(a)$(af4x(a) and awat(a) )..
                 QWAT(a) =E= adwat(a)*(SUM(f4$deltawat(f4,a),deltawat(f4,a)
                                 *(ADFD(f4,a)* FD(f4,a)) **(-rhowat(a)))
                        +SUM(cwat,deltawat(cwat,a)*QWAT2(cwat,a)**(-rhowat(a))))
                          **(-1/rhowat(a)) ;

* FOC for water commodity prices

 WATDFOC(cwat,a)$(af4x(a) and deltawat(cwat,a))..
       PQD(cwat)*PQDDIST(cwat,a)*(1+TWATA(cwat,a))
                 =E=  PWAT(a)*QWAT(a)* (SUM(f4p$deltawat(f4p,a),deltawat(f4p,a)
                          * ADFD(f4p,a)*FD(f4p,a)**(-rhowat(a)))+
                         SUM(cwatp$deltawat(cwatp,a),deltawat(cwatp,a)
                         *QWAT2(cwatp,a)**(-rhowat(a))))**(-1)
                         *deltawat(cwat,a)*QWAT2(cwat,a)**(-rhowat(a)-1) ;

* FOC  for factor prices
**JL 6.2.14
 FD4FOC(f4,a)$(af4x(a) and  deltawat(f4,a))..
         WF(f4)*WFDIST(f4,a)*(1 + TF(f4,a))
                 =E=  PWAT(a)*QWAT(a)*(SUM(f4p$deltawat(f4p,a),deltawat(f4p,a)
                          * ADFD(f4p,a)*FD(f4p,a)**(-rhowat(a)))
                       + SUM(cwatp$deltawat(cwatp,a),
                         deltawat(cwatp,a)*QWAT2(cwatp,a)**(-rhowat(a))))**(-1)
                         * deltawat(f4,a)*ADFD(f4,a)**(-rhowat(a))* FD(f4,a)
                         **(-rhowat(a)-1) ;

**Leontief
QWATEQ1(c,a)$ (af4xn(a) and acwat(a))..
          QWAT2(c,a)=E= iofcqwat(c,a)*QWAT(a)    ;

**JL 12.02.14
QWATEQ2(f4,a)$(af4xn(a) and afwat(a))..
 FD(f4,a)*ADFD(f4,a)  =E=  iofcqwat(f4,a)*QWAT(a);

**JL 12.02.14
 PWATEQ(a)$(af4xn(a))..
     PWAT(a) =E= SUM(c$cwat(c),iofcqwat(c,a)*PQD(c)*PQDDIST(c,a)*(1+TWATA(c,a)))
                    +SUM(f4,iofcqwat(f4,a)*WF(f4)*WFDIST(f4,a) *(1+TF(f4,a)));

*--------------------------------COMMODITY OUTPUT-------------------------------

* CES aggregation of differentiated commodities

 COMOUT(c)$(cx(c) and cxac(c))..
                  QXC(c) =E= adxc(c)*(SUM(a$deltaxc(a,c),deltaxc(a,c)
                             *QXAC(a,c)**(-rhocxc(c))))**(-1/rhocxc(c)) ;

 COMOUTFOC(a,c)$(deltaxc(a,c) and cxac(c)  )..
               PXAC(a,c) =E= PXC(c)*QXC(c)
                             *(SUM(ap$deltaxc(ap,c),deltaxc(ap,c)
                             *QXAC(ap,c)**(-rhocxc(c))))**(-1)
                             *deltaxc(a,c)*QXAC(a,c)**(-rhocxc(c)-1) ;

* Aggregation of homogenous commodities

 COMOUT2(c)$(cx(c) and cxacn(c))..
                  QXC(c) =E= SUM(a,QXAC(a,c)) ;

 COMOUTFOC2(a,c)$(deltaxc(a,c) and cxacn(c))..
               PXAC(a,c) =E= PXC(c) ;

* Activity Output

 ACTIVOUT(a,c)$ioqxacqx(a,c)..
               QXAC(a,c) =E= ioqxacqx(a,c) * QX(a) ;

*----------------------- FACTOR BLOCK ------------------------------------------

 YFEQ(f)..         YF(f) =E= SUM(a,WF(f)*WFDIST(f,a)*FD(f,a))
                             + (factwor(f)*ER) ;





 YFDISPEQ(f)..     YFDISP(f) =E= (YF(f) * (1- deprec(f)))*(1 - TYF(f)) ;

*--------------------- HOUSEHOLD BLOCK -----------------------------------------
* ## Household Income

 YHEQ(h)..         YH(h) =E= SUM(f,hovash(h,f)*YFDISP(f))
                             + SUM(hp,HOHO(h,hp))
                             + SUM(e,HOENT(h,e))
                             + (HGADJ * hogovconst(h)*CPI)
                             + (howor(h)*ER) ;

* Household Expenditure

 HOHOEQ(h,hp)..
              HOHO(h,hp) =E= hohosh(h,hp)
                             *((YH(h) * (1 - TYH(h))) * (1 - SHH(h))) ;

 HEXPEQ(h)..     HEXP(h) =E= ((YH(h) * (1 - TYH(h))) * (1 - SHH(h)))
                             - SUM(hp,HOHO(hp,h)) ;


 QCDEQ(c,h) ..
        PQD(c)*QCD(c,h) =E= PQD(c)*qcdconst(c,h)
                             + beta(c,h)
                              *(HEXP(h)-SUM(cp,PQD(cp)*qcdconst(cp,h))) ;



* ------------- ENTERPRISE BLOCK -----------------------------------------------
* ## Enterprise Income

 YEEQ(e)..         YE(e) =E= SUM(f,entvash(e,f)*YFDISP(f))
                             + (EGADJ * entgovconst(e) * CPI)
                             + (entwor(e)*ER) ;

* ## Enterprise Expenditure

 QEDEQ(c,e)..
               QED(c,e) =E= QEDADJ*qedconst(c,e) ;

**JL 20.03.14
 HOENTEQ(h,e)$ecom(e)..
               HOENT(h,e) =E= hoentsh(h,e)
                             * (((YE(e) * (1 - TYE(e))) * (1 - SEN(e)))
                             - SUM(c,QED(c,e)*PQD(c)));

**JL 23.03.14
HOENTEQ2(h,e)$esoc(e)..
               HOENT(h,e) =E= (hoentconst(h,e)*CPI*HEADJ) ;



 GOVENTEQ(e).. GOVENT(e) =E= goventsh(e)
                             * (((YE(e) * (1 - TYE(e))) * (1 - SEN(e)))
                              - SUM(c,QED(c,e)*PQD(c))) ;

 VEDEQ(e)..       VED(e) =E= SUM(c ,QED(c,e)*PQD(c)) ;

* ------------- GOVERNMENT BLOCK -----------------------------------------------

* #### Government Income Block

* ## Government Tax Rates

 TMDEF(c)..        TM(c) =E= ((tmb(c) + dabtm(c)) * TMADJ)
                                      + (DTM * tm01(c)) ;

 TEDEF(c)..        TE(c) =E= ((teb(c) + dabte(c)) * TEADJ)
                                      + (DTE * te01(c)) ;

 TSDEF(c)$(cd(c) OR cm(c))..
                   TS(c) =E= ((tsb(c) + dabts(c)) * TSADJ)
                                      + (DTS * ts01(c)) ;

 TEXDEF(c)$(cd(c) OR cm(c))..
                  TEX(c) =E= ((texb(c) + dabtex(c)) * TEXADJ)
                                      + (DTEX * tex01(c)) ;

 TXDEF(a)..       TX(a) =E= ((txb(a) + dabtx(a)) * TXADJ)
                                      + (DTX * tx01(a)) ;

 TFDEF(f,a)..     TF(f,a) =E= ((tfb(f,a) + dabtf(f,a))* TFADJ)
                                      + (DTF*tf01(f,a)) ;

 TYFDEF(f)..      TYF(f) =E= ((tyfb(f) + dabtyf(f)) * TYFADJ)
                                     + (DTYF * tyf01(f)) ;

 TYHDEF(h)..      TYH(h) =E= ((tyhb(h) + dabtyh(h)) * TYHADJ * TYADJ)
                                     + (DTYH * DTY * tyh01(h)) ;

 TYEDEF(e)..      TYE(e) =E= ((tyeb(e) + dabtye(e)) * TYEADJ * TYADJ)
                                     + (DTYE * DTY * tye01(e)) ;
** JL 11.6.12
 TWATDEF(c)..      TWAT(c)   =E= ((twatb(c) + dabtwat(c))* TWATADJ)
                                     + (DTWAT(c) * twat01(c)) ;
** JL 29.6.12
 TWATADEF(c,a)..   TWATA(c,a)=E= ((twatab(c,a) + dabtwata(c,a))* TWATAADJ)
                                     + (DTWATA*twata01(c,a)) ;
                                     
**ZK
  TADEF(c)..       TA(c)   =E= ((tab(c) + dabta(c))*TAADJ)
                                 + (DTA*ta01(c)*TA(c));
  
  TSUBDEF(a) ..    TSUB(a) =E= ((tsubb(a) + dsubbta(a))*TSUBADJ.L)
                                 + (DTSUB*tsub01(a)*TSUB(a));  

* ## Government Tax Revenues

 MTAXEQ..            MTAX =E= SUM(c,TM(c)*PWM(c)*ER*QM(c)) ;

 ETAXEQ..            ETAX =E= SUM(c,TE(c)*PWE(c)*ER*QE(c)) ;

 STAXEQ..            STAX =E= SUM(c,TS(c)*PQS(c)*QQ(c)) ;

 EXTAXEQ..           EXTAX =E= SUM(c,TEX(c)*PQS(c)*QQ(c)) ;

 ITAXEQ..            ITAX =E= SUM(a,TX(a)*PX(a)*QX(a)) ;

 FTAXEQ..            FTAX =E= SUM((f,a),TF(f,a)*WF(f)*WFDIST(f,a)*FD(f,a)) ;

 FYTAXEQ..           FYTAX =E= SUM(f,TYF(f)*(YF(f) * (1- deprec(f)))) ;

 DTAXEQ..            DTAX =E= SUM(h,TYH(h)*YH(h))
                              + SUM(e,TYE(e)*YE(e));
** JL 11.6.12
 WATTAXEQ..          WATTAX  =E= SUM(c,TWAT(c)*PQS(c)*QQ(c));
** JL 14.6.12
 WATATAXEQ..         WATATAX =E= SUM((c,a),TWATA(c,a)*PQD(c)*PQDDIST(c,a)
                                         *QWAT2(c,a)) ;
                                         
 ATAXEQ..            ATAX   =E=  SUM(c,TA(c)*PQS(c)*QQ(c)) ;
 
 SUBTAXEQ..          SUBTAX =E=  SUM(a,TSUB(a)*PX(a)*QX(a)) ;

* ## Government Income

 YGEQ..               YG =E= MTAX + ETAX
                             + STAX + EXTAX + ITAX + FTAX
                             + FYTAX + DTAX
**JL 11.6.12
                             + WATTAX
                             + WATATAX
                             + SUM(f,govvash(f)*YFDISP(f))
                             + SUM(e,GOVENT(e)) + (govwor*ER)
                             
** ZK
                            + ATAX + SUBTAX
                            
                            ;

* #### Government Expenditure Block

**JL 04.11.14
 QGDEQ(cnwat)..       QGD(cnwat) =E= QGDADJ*comgovconst(cnwat) ;
 QGDEQ2(cwat)..       QGD(cwat) =G= QGDWADJ*comgovconst(cwat)  ;



 EGEQ..               EG =E= SUM(c,QGD(c)*PQD(c))
                             + SUM(h,hogovconst(h)*CPI*HGADJ)
                             + SUM(e,EGADJ*entgovconst(e)*CPI) ;

 VGDEQ..             VGD =E= SUM(c,QGD(c)*PQD(c)) ;

* ------------- KAPITAL BLOCK --------------------------------------------------

* ## Savings Block

 SHHDEF(h)..     SHH(h) =E= ((shhb(h) + dabshh(h)) * SHADJ * SADJ)
                              + (DSHH * DS * shh01(h)) ;

 SENDEF(ecom)..     SEN(ecom) =E= ((senb(ecom) + dabsen(ecom)) * SEADJ * SADJ)
                              + (DSEN * DS * sen01(ecom)) ;
**JL 23.03.14
 KAPENT2DEF(esoc)..      KAPENT2(esoc) =E=  YE(esoc) * (1 - TYE(esoc))
                                 -SUM(h,HOENT(h,esoc))-GOVENT(esoc)-VED(esoc);

**JL 23.02.14
 TOTSAVEQ..       TOTSAV =E= SUM(f,(deprec(f)*YF(f)))
                             + SUM(h,(YH(h) * (1 - TYH(h))) * SHH(h))
                             + SUM(ecom, YE(ecom) * (1 - TYE(ecom)) * SEN(ecom))
                             + KAPGOV
                             + SUM(esoc, KAPENT2(esoc))
                             + (CAPWOR*ER) ;

* ## Investment Block

 QINVDEQ(c)..     QINVD(c) =E= IADJ*invconst(c);


 INVESTEQ..       INVEST =E= SUM(c,PQD(c)*(QINVD(c) + dstocconst(c))) ;

* ------------- FOREIGN INSTITUTIONS BLOCK -------------------------------------

 YFWOREQ(f)..   YFWOR(f) =E= worvash(f)*YFDISP(f) ;

* ------------- MARKET CLEARING BLOCK ------------------------------------------

* ##### Account Closure

 FMEQUIL(f)..      FS(f) =E= SUM(a,FD(f,a)) ;


 FMEQUIL2(sew)..   FS(sew) =E= SHSEWS*(1-SHSEWL)*
                         (SUM((cwat,asew), QWAT2(cwat,asew)*SHSEWMUN(cwat,asew))
                         +SUM((cwat,h), QCD(cwat,h)*SHSEWMUN(cwat,h)));



 QEQUIL(c)..      QQ(c)  =E= QINTD(c) + SUM(h,QCD(c,h)) + SUM(e,QED(c,e))
                              + QGD(c) + QINVD(c) + dstocconst(c) ;

 GOVEQUIL..       KAPGOV =E= YG - EG ;

 CAEQUIL..        CAPWOR =E= SUM(cm,PWM(cm)*QM(cm))
                             + (SUM(f,YFWOR(f))/ER)
                             - SUM(ce,PWE(ce)*QE(ce))
                             - SUM(h,howor(h))
                             - SUM(e,entwor(e))
                             - govwor
                             - SUM(f,factwor(f)) ;

* #### Absorption Closure


 VFDOMDEQ..       VFDOMD =E= SUM(c, PQD(c) *
                                (SUM(h,QCD(c,h)) + SUM(e,QED(c,e))
                                 + QGD(c) + QINVD(c) + dstocconst(c))) ;

 INVESTSHEQ..
       INVESTSH * VFDOMD =E= INVEST ;

 VGDSHEQ..
          VGDSH * VFDOMD =E= VGD ;

 VEDSHEQ(e)..
       VEDSH(e) * VFDOMD =E= VED(e) ;

* ##### GDP
**ZK
 GDPEQ..           GDP   =E=     SUM((c,h),QCD.L(c,h)*PQD.L(c))
                              +  SUM(c,QGD.L(c)*PQD.L(c))
                              +  SUM(c,QINVD.L(c)*PQD.L(c))
                              +  SUM(c,PQD.L(c)*dstocconst(c))
                              + (SUM(c,PWE.L(c)*QE.L(c)*ER.L)
                              -  SUM(c,PWM.L(c)*QM.L(c)*ER.L))
                     ;           
**ZK
 GDPVAEQ..         GDPVA =E= SUM((f,a),WF(f)*WFDIST(f,a)*FD(f,a))
                         + MTAX + ETAX + STAX + EXTAX + ITAX + FTAX
** JL 11.6.12
                         +WATTAX
                         +WATATAX
**ZK
                         + ATAX + SUBTAX 
;


* ##### Slack

 WALRASEQ..       TOTSAV =E= INVEST + WALRAS ;
 
Set

t              Time period /2011*2020/
T1(t)          First period

;

* Set T1 as the base year period 
T1(t) = Yes$(ORD(t) eq 2011);


Parameter

pop_T(h,t)            Population data used in model over time;

***** ------------------------------------------------------------------------------------------------
*** ---- Section 1.1: Parameter Listing -------------------------------------------------------------- 

$include stage_w_dynamics_paramlisting.inc

***** ------------------------------------------------------------------------------------------------
*** ---- Section 2: Extract data of growth path set--------------------------------------------------- 

$ontext
The aim of this dynamicsParameter file is to determine the growth path of the Total Factor Production
(TFP) based on the given values of the exogenous dynamics which includes:
1. Population growth
2. Autonomous Energy Efficiency Improvement (AEEI)
3. Levelised Cost of Electricity (LCOE)
4. Autonomous Agricultural Productivity
5. Agricultural area changes
6. Shared Socioeconomic Pathways: Middle of the Road (SSP2) 

So in this file, we need to extract data from given path
to calculate the growth path of C_TFP, C_AEEI and C_ELE. And C_TFP, C_AEEI and
C_ELE will finally used in all scenarios (inluding the BAU and CF scenarios).
$offtext


Parameters

BAUGDP(t)            BAU GDP based on SSP2
delta_pop(t)         Population growth rate
delta_agriland(t)    Agricultural cropland change
;

$CALL "GDXXRW i=Growth-Path.xlsx o=growth-path.gdx index=Layout!A4"

$GDXIN growth-path.gdx


$LOAD delta_pop
$LOAD BAUGDP
$LOAD delta_agriland

$GDXIN

Display delta_pop, BAUGDP, delta_agriland;


*****--------------------------------------------------------------------------------------------------
*** ---- Section 3: Running the dynamic model ---------------------------------------------------------

Loop(t,
    
* ------- NORMALISED PRICE BLOCK -----------------------------------------

 PD_T1(c,t)       =        PD.L(c)       ;

 PM_T1(c,t)       =        PM.L(c)       ;
 PE_T1(c,t)       =        PE.L(c)       ;

 PQS_T1(c,t)      =        PQS.L(c)      ;


 PXC_T1(c,t)      =        PXC.L(c)      ;

 PXAC_T1(a,c,t)   =        PXAC.L(a,c)   ;
 PX_T1(a,t)       =        PX.L(a)       ;   

 ER_T1(t)         =        ER.L          ;
 

* ------- TRADE BLOCK ---------------------------------------------------

*        Export Block

 PWE_T1(c,t)        = PWE.L(c)         ;
 
 QD_T1(c,t)         = QD.L(c)          ;
 
 QE_T1(c,t)         = QE.L(c)          ;

*        Imports Block

 PWM_T1(c,t)        = PWM.L(c)         ;
 
 QQ_T1(c,t)         = QQ.L(c)          ;
 
 QM_T1(c,t)         = QM.L(c)          ;


* ------- COMMODITY PRICE BLOCK ------------------------------------------

 PQD_T1(c,t)        = PQD.L(c)         ;
 
 PQDDIST_T1(c,a,t)  = PQDDIST.L(c,a)   ;

* ------- NUMERAIRE PRICE BLOCK ------------------------------------------

 CPI_T1(t)          = CPI.L            ;
 PPI_T1(t)          = PPI.L            ;

* ------- PRODUCTION BLOCK -----------------------------------------------


* CES aggregation functions for Level 1 of production nest
      
 PVA_T1(a,t)        = PVA.L(a)         ;
 PINT_T1(a,t)       = PINT.L(a)        ;
 
 QX_T1(a,t)         = QX.L(a);

 ADXADJ_T1(t)       = ADXADJ.L         ;
 DADX_T1(t)         = DADX.L           ;
 ADX_T1(t,a)        = ADX.L(a)         ;

* Leontief aggregation functions for Level 1 of production nest

 QINT_T1(a,t)       = QINT.L(a)        ;
 QVA_T1(a,t)        = QVA.L(a)         ;

 QNW_T1(a,t)        = QNW.L(a)         ;
 PNW_T1(a,t)        = PNW.L(a)         ;

 QWAT_T1(c,sac,t)   = QWAT2.L(c,sac)   ;
 

* CES aggregation functions for Level 2 of production nest
 
 FD_T1(f,a,t)       = FD.L(f,a)        ;
 FS_T1(f,t)         = FS.L(f)          ; 

 WF_T1(f,t)       = WF.L(f)            ;
 WFDIST_T1(f,a,t)$FD.L(f,a)             = WFDIST.L(f,a)$FD.L(f,a);
 WFDIST_T1(f,a,t)$(FD.L(f,a) EQ 0)      = WFDIST.L(f,a)$(FD.L(f,a) EQ 0);

 ADVAADJ_T1(t)      = ADVAADJ.L        ;
 DADVA_T1(t)        = DADVA.L          ;
 ADVA_T1(a,t)       = ADVA.L(a)        ;
 
 ADFD_T1(f,a,t)     = ADFD.L(f,a)      ;

* Intermediate Input Demand
  
 QINTD_T1(c,t)      = QINTD.L(c)       ;

* Commodity Output
 
 QXC_T1(c,t)       = QXC.L(c)$cxac(c)  ;
 
* Activity Output

 QXAC_T1(a,c,t)    = QXAC.L(a,c)       ;

* ------- FACTOR BLOCK ---------------------------------------------------

 YF_T1(f,t)                 = YF.L(f);
 YFDISP_T1(f,t)             = YFDISP.L(f);
 
* ------- HOUSEHOLD BLOCK ------------------------------------------------

* ## Household Income

 YH_T1(h,t)                 = YH.L(h);

* ## Household Expenditure

 HOHO_T1(h,hp,t)            = HOHO.L(h,hp);
 HEXP_T1(h,t)               = HEXP.L(h);
 QCD_T1(c,h,t)              = QCD.L(c,h);

* ------- ENTERPRISE BLOCK -----------------------------------------------

* ## Enterprise Income

 YE_T1(e,t)                 = YE.L(e);

* ## Enterprise Expenditure

 QEDADJ_T1(t)               = QEDADJ.L;

 QED_T1(c,e,t)              = QED.L(c,e);
 HOENT_T1(h,e,t)            = HOENT.L(h,e);

 GOVENT_T1(e,t)             = GOVENT.L(e);
 VED_T1(e,t)                = VED.L(e);


* ------- GOVERNMENT BLOCK -----------------------------------------------

* #### Government Income Block

* ## Government Taxes

 TEADJ_T1(t)                   = TEADJ.L;
 TMADJ_T1(t)                   = TMADJ.L ;
 TSADJ_T1(t)                   = TSADJ.L;
 TEXADJ_T1(t)                  = TEXADJ.L;
 TXADJ_T1(t)                   = TXADJ.L;
 TFADJ_T1(t)                   = TFADJ.L;
 TYFADJ_T1(t)                  = TYFADJ.L;
 TYHADJ_T1(t)                  = TYHADJ.L;
 TYADJ_T1(t)                   = TYADJ0;
 TYEADJ_T1(t)                  = TYEADJ0;

 TWATADJ_T1(t)                 = TWATADJ.L;
 TWATAADJ_T1(t)                = TWATAADJ.L;

 TAADJ_T1(t)                   = TAADJ.L;
 TSUBADJ_T1(t)                 = TSUBADJ.L;
 
 DTE_T1(t)                     = DTE.L;
 DTM_T1(t)                     = DTM.L;
 DTS_T1(t)                     = DTS.L;
 DTEX_T1(t)                    = DTEX.L;
 DTX_T1(t)                     = DTX.L ;
 DTF_T1(t)                     = DTF.L ;
 DTYF_T1(t)                    = DTYF.L ;
 DTYH_T1(t)                    = DTYH.L ;
 DTY_T1(t)                     = DTY.L;
 DTYE_T1(t)                    = DTYE.L;
 
 DTA_T1(t)                     = DTA.L;
 DTSUB_T1(t)                   = DTSUB.L;
 
 DTWAT_T1(c,t)                 = DTWAT.L(c);
 DTWATA_T1(t)                  = DTWATA.L ;

 TM_T1(c,t)                    = TM.L(c);
 TE_T1(c,t)                    = TE.L(c);
 TS_T1(c,t)                    = TS.L(c);
 TEX_T1(c,t)                   = TEX.L(c);
 TX_T1(a,t)                    = TX.L(a);
 TF_T1(f,a,t)                  = TF.L(f,a) ;
 TYF_T1(f,t)                   = TYF.L(f);
 TYH_T1(h,t)                   = TYH.L(h);

 TYE_T1(e,t)                   = TYE.L(e);

 TWAT_T1(c,t)                  = TWAT.L(c);
 TWATA_T1(c,a,t)               = TWATA.L(c,a);
 
 TA_T1(c,t)                    = TA.L(c);
 TSUB_T1(a,t)                  = TSUB.L(a) ;
 
 MTAX_T1(t)                    = MTAX.L;
 ETAX_T1(t)                    = ETAX.L;
 STAX_T1(t)                    = STAX.L;

 WATTAX_T1(t)                  = WATTAX.L;
 WATATAX_T1(t)                 = WATATAX.L;

 EXTAX_T1(t)                   = EXTAX.L ;
 ITAX_T1(t)                    = ITAX.L ;
 FTAX_T1(t)                    = FTAX.L;
 FYTAX_T1(t)                   = FYTAX.L;
 DTAX_T1(t)                    = DTAX.L;
 
 ATAX_T1(t)                    = ATAX.L;
 SUBTAX_T1(t)                  = SUBTAX.L;
 
* ## Government Income

 YG_T1(t)                      = YG.L;

* #### Government Expenditure Block

 QGDADJ_T1(t)                  = QGDADJ.L;
 HGADJ_T1(t)                   = HGADJ.L ;
 HEADJ_T1(t)                   = HEADJ.L ;
 EGADJ_T1(t)                   = EGADJ.L ;

 QGD_T1(c,t)                   = QGD.L(C);

 VGD_T1(t)                     = VGD.L ;
 EG_T1(t)                      = EG.L ;

* ------- KAPITAL BLOCK --------------------------------------------------

* ## Savings Block

 SADJ_T1(t)                    = SADJ.L;
 SHADJ_T1(t)                   = SHADJ.L;
 SEADJ_T1(t)                   = SEADJ.L ;

 DSHH_T1(t)                    = DSHH.L;
 DS_T1(t)                      = DS.L;
 DSEN_T1(t)                    = DSEN.L;

 SHH_T1(h,t)                   = SHH.L(h);
 SEN_T1(e,t)                   = SEN.L(e);

 KAPENT2_T1(esoc,t)            = KAPENT2.L(esoc);
 TOTSAV_T1(t)                  = TOTSAV.L;

* ## Investment Block

 IADJ_T1(t)                    = IADJ.L;
 INVEST_T1(t)                  = INVEST.L;
 QINVD_T1(c,t)                 = QINVD.L(c);

* ------- FOREIGN INSTITUTIONS BLOCK -------------------------------------

 YFWOR_T1(f,t)                 = YFWOR.L(f);

* ------- MARKET CLEARING BLOCK ------------------------------------------

* ##### Account Closure

 KAPGOV_T1(t)                  = KAPGOV.L;
 CAPWOR_T1(t)                  = CAPWOR.L;
 
* #### Absorption Closure

 VFDOMD_T1(t)                  = VFDOMD.L ;
 INVESTSH_T1(t)                = INVESTSH.L;
 VGDSH_T1(t)                   = VGDSH.L;
 VEDSH_T1(e,t)                 = VEDSH.L(e);

* ##### GDP

 GDP_T1(t)                     = GDP.L;
 GDPVA_T1(t)                   = GDPVA.L;

* ##### Slack

 WALRAS_T1(t)                  = WALRAS.L;

*------------- water variables---------------------------------

*         QWAT_T1(a,t)                = QWAT.L(a);
 PWAT_T1(a,t)                  = PWAT.L(a);

 QWATMUN_T1(t)                 = QWATMUN.L ;
 QSEW_T1(t)                    = QSEW.L ;
 SHSEWMUN_T1(cwat,sac,t)       = SHSEWMUN.L(cwat,sac);
 QSEWS_T1(t)                   = QSEWS.L;
 SHSEWS_T1(t)                  = SHSEWS.L;
 SHSEWLT_T1(t)                 = SHSEWL.L;

IF(flow_cont("outGDXdyn") = 1,

Execute_Unload  'stage_w_dyn.gdx',

                  PWE_T1, QD_T1, 
                  PWM_T1, QQ_T1, QM_T1,QE_T1,
                  PQD_T1, PQDDIST_T1,
                  CPI_T1, PPI_T1,
                  PVA_T1, PINT_T1, QX_T1, ADXADJ_T1, DADX_T1,
                  QINT_T1, QVA_T1, QNW_T1,PNW_T1, QWAT_T1,
                  ADVAADJ_T1, DADVA_T1, ADVA_T1, ADFD_T1,
                  FD_T1,FS_T1, WF_T1, WFDIST_T1, QINTD_T1,
                  QXC_T1,
                  QXC_T1,
                  QXAC_T1,YF_T1,YFDISP_T1,
                  HOHO_T1, HEXP_T1, QCD_T1,
                  YE_T1, QEDADJ_T1, QED_T1, HOENT_T1, GOVENT_T1, VED_T1,
                  TEADJ_T1, TMADJ_T1, TSADJ_T1, TEXADJ_T1, TXADJ_T1,TFADJ_T1, TYFADJ_T1, TYHADJ_T1,
                  TYADJ_T1, TYEADJ_T1,
                  TWATADJ_T1, TWATAADJ_T1,
                  DTE_T1, DTM_T1, DTS_T1, DTEX_T1,DTX_T1,DTF_T1, DTYF_T1, DTYH_T1, DTY_T1, DTYE_T1,
                  DTWAT_T1, DTWATA_T1, TM_T1, TE_T1,TS_T1, TEX_T1, TX_T1,TF_T1, TYF_T1, TYH_T1,
                  TYE_T1, TWAT_T1, TWATA_T1, MTAX_T1, ETAX_T1, STAX_T1, WATTAX_T1, WATATAX_T1,
                  EXTAX_T1, ITAX_T1,FTAX_T1, FYTAX_T1, DTAX_T1, YG_T1,
                  QGDADJ_T1, HGADJ_T1, HEADJ_T1, EGADJ_T1,QGD_T1, VGD_T1, EG_T1,
                  SADJ_T1, SHADJ_T1, SEADJ_T1, DSHH_T1, DS_T1, DSEN_T1,SHH_T1,SEN_T1,
                  KAPENT2_T1, TOTSAV_T1,
                  IADJ_T1, INVEST_T1, QINVD_T1,
                  YFWOR_T1,
                  KAPGOV_T1, CAPWOR_T1, VFDOMD_T1, INVESTSH_T1, VGDSH_T1, VEDSH_T1, GDPVA_T1, GDP_T1,
                  WALRAS_T1,PWAT_T1, QWATMUN_T1, QSEW_T1, SHSEWMUN_T1,QSEWS_T1,SHSEWS_T1, SHSEWLT_T1,
                  delta_pop, BAUGDP, delta_agriland
                  
                  ;
                  

);

*Increase in Factor Labour endownment as a result of population growth

 FS.fx(l) = FS.L(l)*(1+delta_pop(t));
 
*Increase in Factor Land endownment as a result of increase of both agriculture productivity and Land increase

 FS.fx(n) = FS.L(n)*(1+delta_agriland(t));
 
* The following formula dynamically gives the exogenous dynamic parameter value of each recursive period of the model.

       Solve Models1 Using MCP;
);