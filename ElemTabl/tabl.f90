!****************************************************************************/
!*
!*    SUBROUTINE:			Tabl2K1(H, h, a, K1)
!*
!*    PURPOSE:	Calculates coeficient for calculating mass properties
!*	
!*	  VARIABLES:
!*
!*		Input -	H,h,a:		Input values (Scalars)					- REAL
!*
!*		Output - K1:		Coefficient (Scalar)					- REAL
!*
!*
!****************************************************************************/

subroutine Tabl2K1(H, Hlc, a, K1)
!MS$ATTRIBUTES DLLEXPORT :: Tabl2K1
!MS$ATTRIBUTES ALIAS : 'Tabl2K1' :: Tabl2K1
real K1
real H,Hlc,a,p,n,table(21,21),rows(21),cols(21)

data (table(1,j),j=1,21)/21*0.0/
data ((table(i,j),j=i,21),i=2,21)&
	/0.36898,0.65832,0.82936,0.95376,1.04860,1.12148,1.17652,1.21616&
	,1.24188,1.25454,1.25454,1.24188,1.21616,1.17562,1.12148,1.04860&
	,0.95376,0.82936,0.65832,0.36898&
	,1.02731,1.48769,1.78313,2.00236,2.17008,2.29799,2.39267,2.45803&
	,2.49642,2.50908,2.49642,2.45803,2.39267,2.29799,2.17008,2.00239&
	,1.78313,1.48769,1.02731&
	,1.85667,2.44145,2.83173,3.12384,3.34659,3.51415,3.63455,3.71257&
	,3.75096,3.75096,3.71257,3.63455,3.51415,3.34659,3.12384,2.83173&
	,2.44145,1.85667&
	,2.81044,3.49005,3.95321,4.30036,4.56275,4.75603,4.88909,4.96711&
	,4.99283,4.96711,4.88909,4.75603,4.56275,4.30036,3.95321,3.49005&
	,2.81044&
	,3.95904,4.61153,5.12972,5.51651,5.80462,6.01057,6.14363,6.20899&
	,6.20899,6.14363,6.01057,5.80462,5.51651,5.12972,4.61153,3.95904&
	,4.98051,5.78804,6.34588,6.75839,7.05918,7.26511,7.38551,7.42515&
	,7.38551,7.26511,7.05918,6.75839,6.34588,5.78804,4.98051&
	,6.15703,7.00420,7.58776,8.01293,8.31370,8.50698,8.60166,8.60166&
	,8.50698,8.31370,8.01293,7.58776,7.00420,6.15703&
	,7.37319,8.24609,8.84230,9.26747,9.55558,9.72314,9.77817,9.72314&
	,9.55558,9.26747,8.84230,8.24609,7.37319&
	,8.61506,9.50062,10.09683,10.50934,10.77173,10.89965,10.89965&
	,10.77173,10.50934,10.09683,9.50062,8.61506&
	,9.86960,10.75515,11.33871,11.72550,11.94825,12.02113,11.94825&
	,11.72550,11.33871,10.75515,9.86960&
	,11.12414,11.99703,12.55486,12.90202,13.06973,13.06973,12.90202&
	,12.55486,11.99703,11.12414&
	,12.36602,13.21319,13.73138,14.02349,14.11833,14.02349,13.73138&
	,13.21319,12.36602&
	,13.58217,14.38970,14.85286,15.07209,15.07209,14.85286,14.38970&
	,13.58217&
	,14.75869,15.51118,15.90146,16.02580,15.90146,15.51118,14.75869&
	,15.88017,16.55978,16.85522,16.85522,16.55978,15.88017&
	,16.92876,17.51354,17.68459,17.51354,16.92876&
	,17.88253,18.34291,18.34291,17.88253&
	,18.71190,19.00123,18.71190&
	,19.37022,19.37022&
	,19.73920/

	p=Hlc/a
	n=H/a
	do i=1,21
		rows(i)=i/10.-.1
		cols(i)=rows(i)
	end do

	K1=QD2VL(p,n,21,rows,21,cols,table,21,.FALSE.)

end subroutine

!****************************************************************************/
!*
!*    SUBROUTINE:			Tabl2K2(H, h, a, K2)
!*
!*    PURPOSE:	Calculates coeficient for calculating mass properties
!*	
!*	  VARIABLES:
!*
!*		Input -	H,h,a:		Input values (Scalars)					- REAL
!*
!*		Output - K2:		Coefficient (Scalar)					- REAL
!*
!*
!****************************************************************************/

subroutine Tabl2K2(H, Hlc, a, K2)
!MS$ATTRIBUTES DLLEXPORT :: Tabl2K2
!MS$ATTRIBUTES ALIAS : 'Tabl2K2' :: Tabl2K2
real K2
real H,Hlc,a,p,n,table(21,21),rows(21),cols(21)

data (table(1,j),j=1,21)/21*0.0/
!data ((table(i,j),j=i,21),i=2,21)&
!	/

	p=Hlc/a
	n=H/a
	do i=1,21
		rows(i)=i/10-.1
		cols(i)=rows(i)
	end do

	K2=QD2VL(p,n,21,rows,21,cols,table,21,.FALSE.)

end subroutine

!****************************************************************************/
!*
!*    SUBROUTINE:			Tabl8K1(H, a, K1)
!*
!*    PURPOSE:	Calculates coeficient for calculating mass properties
!*	
!*	  VARIABLES:
!*
!*		Input -	H,a:		Input values (Scalars)					- REAL
!*
!*		Output - K1:		Coefficient (Scalar)					- REAL
!*
!*
!****************************************************************************/

subroutine Tabl8K1(H, a, K1)
!MS$ATTRIBUTES DLLEXPORT :: Tabl8K1
!MS$ATTRIBUTES ALIAS : 'Tabl8K1' :: Tabl8K1
real K1
real H,a,p,rows(21),table(21)

data table	/0.00000,0.00132,0.00741,0.02031,0.04147,0.07203,0.11297&
			,0.16512,0.22920,0.30584,0.39559,0.49894,0.61631,0.74808&
			,0.89456,1.05601,1.23268,1.42473,1.63230,1.85551,2.09440/

	p=H/a

	do i=1,21
		rows(i)=i/20.-.05
	end do

	K1=QDVAL(p,21,rows,table,.false.)

end subroutine

!****************************************************************************/
!*
!*    SUBROUTINE:			Tabl8K2(H, a, K2)
!*
!*    PURPOSE:	Calculates coeficient for calculating mass properties
!*	
!*	  VARIABLES:
!*
!*		Input -	H,a:		Input values (Scalars)					- REAL
!*
!*		Output - K2:		Coefficient (Scalar)					- REAL
!*
!*
!****************************************************************************/

subroutine Tabl8K2(H, a, K2)
!MS$ATTRIBUTES DLLEXPORT :: Tabl8K2
!MS$ATTRIBUTES ALIAS : 'Tabl8K2' :: Tabl8K2
real K2
real H,a,p,rows(21),table(21)

data table	/0.00000,0.21414,0.29814,0.35932,0.40807,0.44847,0.48263&
			,0.51181,0.53683,0.55825,0.57648,0.59185,0.60456,0.61479&
			,0.62268,0.62833,0.63183,0.63321,0.63253,0.62979,0.62500/

	p=H/a

	do i=1,21
		rows(i)=i/20.-.05
	end do

	K2=QDVAL(p,21,rows,table,.false.)

end subroutine

!****************************************************************************/
!*
!*    SUBROUTINE:			Tabl8K3(H, a, K3)
!*
!*    PURPOSE:	Calculates coeficient for calculating mass properties
!*	
!*	  VARIABLES:
!*
!*		Input -	H,a:		Input values (Scalars)					- REAL
!*
!*		Output - K3:		Coefficient (Scalar)					- REAL
!*
!*
!****************************************************************************/

subroutine Tabl8K3(H, a, K3)
!MS$ATTRIBUTES DLLEXPORT :: Tabl8K3
!MS$ATTRIBUTES ALIAS : 'Tabl8K3' :: Tabl8K3
real K3
real H,a,p,rows(21),table(21)

data table	/0.00000,0.00444,0.00872,0.01283,0.01678,0.02058,0.02422&
			,0.02770,0.03102,0.03420,0.03722,0.04008,0.04280,0.04537&
			,0.04779,0.05007,0.05221,0.05420,0.05606,0.05778,0.05938/

	p=H/a

	do i=1,21
		rows(i)=i/20.-.05
	end do

	K3=QDVAL(p,21,rows,table,.false.)

end subroutine

!****************************************************************************/
!*
!*    SUBROUTINE:			Tabl8K4(H, a, K4)
!*
!*    PURPOSE:	Calculates coeficient for calculating mass properties
!*	
!*	  VARIABLES:
!*
!*		Input -	H,a:		Input values (Scalars)					- REAL
!*
!*		Output - K4:		Coefficient (Scalar)					- REAL
!*
!*
!****************************************************************************/

subroutine Tabl8K4(H, a, K4)
!MS$ATTRIBUTES DLLEXPORT :: Tabl8K4
!MS$ATTRIBUTES ALIAS : 'Tabl8K4' :: Tabl8K4
real K4
real H,a,p,rows(21),table(21)

data table	/0.00000,0.00048,0.00191,0.00431,0.00768,0.01203,0.01736&
			,0.02368,0.03100,0.03932,0.04866,0.05902,0.07042,0.08285&
			,0.09634,0.11089,0.12651,0.14322,0.16103,0.17995,0.20000/

	p=H/a

	do i=1,21
		rows(i)=i/20.-.05
	end do

	K4=QDVAL(p,21,rows,table,.false.)

end subroutine

!****************************************************************************/
!*
!*    SUBROUTINE:			Tabl8K5(H, a, K5)
!*
!*    PURPOSE:	Calculates coeficient for calculating mass properties
!*	
!*	  VARIABLES:
!*
!*		Input -	H:			Input values (Scalars)					- REAL
!*
!*		Output - K5:		Coefficient (Scalar)					- REAL
!*
!*
!****************************************************************************/

subroutine Tabl8K5(H, a, K5)
!MS$ATTRIBUTES DLLEXPORT :: Tabl8K5
!MS$ATTRIBUTES ALIAS : 'Tabl8K5' :: Tabl8K5
real K5
real H,a,p,rows(21),table(21)

data table	/0.00000,0.31225,0.43589,0.52678,0.60000,0.66144,0.71414&
			,0.75993,0.80000,0.83516,0.86602,0.89303,0.91652,0.93675&
			,0.95394,0.96824,0.97980,0.98868,0.99499,0.99875,1.00000/

	p=H/a

	do i=1,21
		rows(i)=i/20.-.05
	end do

	K5=QDVAL(p,21,rows,table,.false.)

end subroutine

!****************************************************************************/
!*
!*    SUBROUTINE:			Tabl8K6(H, a, K6)
!*
!*    PURPOSE:	Calculates coeficient for calculating mass properties
!*	
!*	  VARIABLES:
!*
!*		Input -	H,a:		Input values (Scalars)					- REAL
!*
!*		Output - K6:		Coefficient (Scalar)					- REAL
!*
!*
!****************************************************************************/

subroutine Tabl8K6(H, a, K6)
!MS$ATTRIBUTES DLLEXPORT :: Tabl8K6
!MS$ATTRIBUTES ALIAS : 'Tabl8K6' :: Tabl8K6
real K6
real H,a,p,rows(21),table(21)

data table	/0.00000,0.01406,0.02769,0.04087,0.05362,0.06594,0.07782&
			,0.08926,0.10028,0.11088,0.12104,0.13079,0.14012,0.14903&
			,0.15752,0.16561,0.17329,0.18056,0.18744,0.19391,0.20000/

	p=H/a

	do i=1,21
		rows(i)=i/20.-.05
	end do

	K6=QDVAL(p,21,rows,table,.false.)

end subroutine

