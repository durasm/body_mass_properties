!****************************************************************************
!*
!*    PROGRAM: MehLeta.f90
!*
!*    PURPOSE: Contains library routines for calculating mass properties
!*			   and transforming angles and tensors 
!*
!*	  FUNCTIONS:
!*
!*		  Lx(Angle)
!*		  Ly(Angle)
!*		  Lz(Angle)
!*		  
!*		  DeSparrToEuler(AnglesD)
!*		  DeSparrToParameter(AnglesD)
!*
!*		  EulerToDeSparr(AnglesE)
!*		  EulerToParameter(AnglesE)
!*
!*		  ParameterToDeSparr(Eparam)
!*		  ParameterToEuler(Eparam)
!*
!*		  VecAngToParameter(Vec, Angle)
!*
!*		  LToDeSparr(L)
!*		  LToEuler(L)
!*		  LToParameter(L)
!*
!*		  DeSparrToL(AnglesD)
!*		  EulerToL(AnglesE)
!*		  ParameterToL(Eparam)
!*
!*        SteinerToCM(Iin, CMvect, Mass)
!*        SteinerFromCM(Iin, Ovect, Mass)
!*        RotateTensor(Iin, L)
!*
!*	  SUBROUTINES:
!*        MainInerMom(Iin, L, Iout)
!*		  ParameterToVecAng(Eparam, Vec, Ang)
!*
!*
!*******************************************************************************/


!****************************************************************************
!*   FUNCTION: LibMain(HANDLE, DWORD, LPVOID)
!*								   
!*   PURPOSE:  LibMain is called by Windows when
!*             the DLL is initialized, Thread Attached, and other times.
!*             Refer to SDK documentation, as to the different ways this
!*             may be called.
!*             
!*             The LibMain function should perform additional initialization
!*             tasks required by the DLL.  In this example, no initialization
!*             tasks are required.  LibMain should return a value of 1 if
!*             the initialization is successful.
!*           
!*******************************************************************************/

integer*4 function DllMain (hInst, ul_reason_being_called, lpReserved)
!MS$ ATTRIBUTES STDCALL, ALIAS : '_DllMain@12' :: DllMain

use msfwina
use msimslms

integer*4 hInst
integer*4 ul_reason_being_called 
integer*4 lpReserved
               
	hInst  =  hInst
	ul_reason_being_called  =  ul_reason_being_called
	lpReserved  =  lpReserved

	DllMain = 1

	return
end

!****************************************************************************/
!*
!*    FUNCTION:				Lx(Angle)
!*
!*    PURPOSE:	Creates Transformation Matrix for rotation
!*				Coordinate System for Angle around x-axis
!*	
!*	  VARIABLES:
!*
!*		Input -	Angle:		Rotation angle [rad] (Scalar)			- REAL
!*
!*		Output - L:			Transformation matrix (3x3)				- REAL
!*
!*
!****************************************************************************/

real function Lx(Angle) result (L)
!MS$ATTRIBUTES DLLEXPORT :: Lx
!MS$ATTRIBUTES ALIAS : 'Lx' :: Lx
dimension L(3,3)
real Angle

	L(1,1)=1.
	L(1,2)=0.
	L(1,3)=0.
	L(2,1)=0.
	L(2,2)=cos(Angle)
	L(2,3)=sin(Angle)
	L(3,1)=0.
	L(3,2)=-L(2,3)
	L(3,3)=L(2,2)

end function

!****************************************************************************/
!*
!*    FUNCTION:				Ly(Angle)
!*
!*    PURPOSE:	Creates Transformation Matrix for rotation
!*				Coordinate System for Angle around y-axis
!*	
!*	  VARIABLES:
!*
!*		Input -	Angle:		Rotation angle [rad] (Scalar)			- REAL
!*
!*		Output - L:			Transformation matrix (3x3)				- REAL
!*
!*
!****************************************************************************/

real function Ly(Angle) result(L)
!MS$ATTRIBUTES DLLEXPORT :: Ly
!MS$ATTRIBUTES ALIAS : 'Ly' :: Ly
dimension L(3,3)
real Angle

	L(1,1)=cos(Angle)
	L(1,2)=0.
	L(1,3)=-sin(Angle)
	L(2,1)=0.
	L(2,2)=1.
	L(2,3)=0.
	L(3,1)=-L(1,3)
	L(3,2)=0.
	L(3,3)=L(1,1)

end function

!****************************************************************************/
!*
!*    FUNCTION:				Lz(Angle)
!*
!*    PURPOSE:	Creates Transformation Matrix for rotation
!*				Coordinate System for Angle around z-axis
!*	
!*	  VARIABLES:
!*
!*		Input -	Angle:		Rotation angle [rad] (Scalar)			- REAL
!*
!*		Output - L:			Transformation matrix (3x3)				- REAL
!*
!*
!****************************************************************************/

real function Lz(Angle) result(L)
!MS$ATTRIBUTES DLLEXPORT :: Lz
!MS$ATTRIBUTES ALIAS : 'Lz' :: Lz
dimension L(3,3)
real Angle

	L(1,1)=cos(Angle)
	L(1,2)=sin(Angle)
	L(1,3)=0.
	L(2,1)=-L(1,2)
	L(2,2)=L(1,1)
	L(2,3)=0.
	L(3,1)=0.
	L(3,2)=0.
	L(3,3)=1.

end function

!****************************************************************************/
!*
!*    FUNCTION:				DeSparrToEuler(AnglesD)
!*
!*    PURPOSE:	Transforms DeSparr Angles to Euler Angles
!*				
!*	
!*	  VARIABLES:
!*
!*		Input -	AnglesD:	DeSparr Angles [rad] (3)					- REAL
!*
!*		Output - AnglesE:	Euler Angles [rad] (3) 						- REAL
!*
!*
!****************************************************************************/

real function DeSparrToEuler(AnglesD) result(AnglesE)
!MS$ATTRIBUTES DLLEXPORT :: DeSparrToEuler
!MS$ATTRIBUTES ALIAS : 'DeSparrToEuler' :: DeSparrToEuler
dimension AnglesE(3)
real a23,a33,a31,AnglesD(3)

	a23=sin(AnglesD(1))*cos(AnglesD(2))
	a31=cos(AnglesD(1))*sin(AnglesD(2))*cos(AnglesD(3))+sin(AnglesD(1))*&
	sin(AnglesD(2))
	a33=cos(AnglesD(1))*cos(AnglesD(2))

	AnglesE(1)=acos(a23/(sqrt(a33+1.)*sqrt(-a33+1.)))
	AnglesE(2)=acos(a33)
	AnglesE(3)=asin(a31/(sqrt(a33+1.)*sqrt(-a33+1.)))

end function

!****************************************************************************/
!*
!*    FUNCTION:				DeSparrToParameter(AnglesD)
!*
!*    PURPOSE:	Transforms DeSparr Angles to Hamilton-Rodriguez Parameters
!*				
!*	
!*	  VARIABLES:
!*
!*		Input -	AnglesD:	DeSparr Angles [rad] (3)				- REAL
!*
!*		Output - Eparam:	Parameters (4)	 						- REAL
!*
!*
!****************************************************************************/

real function DeSparrToParameter(AnglesD) result(Eparam)
!MS$ATTRIBUTES DLLEXPORT :: DeSparrToParameter
!MS$ATTRIBUTES ALIAS : 'DeSparrToParameter' :: DeSparrToParameter
dimension Eparam(4)
real L(3,3),AnglesD(3)

interface
!	subroutine DeSparrToL (AnglesD,L)
	real function DeSparrToL(AnglesD) result (L)
		dimension L(3,3)
		real AnglesD(3)
!		real L(3,3)
	end function DeSparrToL
!	end subroutine DeSparrToL
end interface

	L=DeSparrToL(AnglesD)
!	call DeSparrToL(AnglesD,L)

	Eparam(1)=sqrt(L(1,1)+L(2,2)+L(3,3)+1)/2.
	Eparam(2)=(L(3,2)-L(2,3))/4./Eparam(1)
	Eparam(3)=(L(1,3)-L(3,1))/4./Eparam(1)
	Eparam(4)=(L(1,2)-L(2,1))/4./Eparam(1)

end function

!****************************************************************************/
!*
!*    FUNCTION:				EulerToDeSparr(AnglesE)
!*
!*    PURPOSE:	Transforms Euler Angles to DeSparr Angles
!*				
!*	
!*	  VARIABLES:
!*
!*		Input -	AnglesE:	Euler Angles [rad] (3)					- REAL
!*
!*		Output - AnglesD:	DeSparr Angles [rad] (3) 				- REAL
!*
!*
!****************************************************************************/

real function EulerToDeSparr(AnglesE) result(AnglesD)
!MS$ATTRIBUTES DLLEXPORT :: EulerToDeSparr
!MS$ATTRIBUTES ALIAS : 'EulerToDeSparr' :: EulerToDeSparr
dimension AnglesD(3)
real a23,a13,a11,AnglesE(3)

	a23=cos(AnglesE(1))*sin(AnglesE(2))
	a13=sin(AnglesE(1))*sin(AnglesE(2))
	a11=cos(AnglesE(1))*cos(AnglesE(3))-sin(AnglesE(1))*cos(AnglesE(2))*&
	sin(AnglesE(3))

	AnglesD(1)=asin(a23/(sqrt(a13+1.)*sqrt(-a13+1.)))
	AnglesD(2)=-asin(a13)
	AnglesD(3)=acos(a11/(sqrt(a13+1.)*sqrt(-a13+1.)))

end function

!****************************************************************************/
!*
!*    FUNCTION:				EulerToParameter(AnglesE)
!*
!*    PURPOSE:	Transforms Euler Angles to Hamilton-Rodriguez Parameters
!*				
!*	
!*	  VARIABLES:
!*
!*		Input -	AnglesE:	Euler Angles [rad] (3)					- REAL
!*
!*		Output - Eparam:	Parameters (4)	 						- REAL
!*
!*
!****************************************************************************/

real function EulerToParameter(AnglesE) result(Eparam)
!MS$ATTRIBUTES DLLEXPORT :: EulerToParameter
!MS$ATTRIBUTES ALIAS : 'EulerToParameter' :: EulerToParameter
dimension Eparam(4)
real L(3,3),AnglesE(3)

interface
	real function EulerToL(AnglesE) result(L)
		dimension L(3,3)
		real AnglesE(3)
	end function EulerToL
end interface

	L=EulerToL(AnglesE)

	Eparam(1)=sqrt(L(1,1)+L(2,2)+L(3,3)+1)/2.
	Eparam(2)=(L(3,2)-L(2,3))/4./Eparam(1)
	Eparam(3)=(L(1,3)-L(3,1))/4./Eparam(1)
	Eparam(4)=(L(1,2)-L(2,1))/4./Eparam(1)

end function

!****************************************************************************/
!*
!*    FUNCTION:				ParameterToDeSparr(Eparam)
!*
!*    PURPOSE:	Transforms Hamilton-Rodriguez Parameters to DeSparr Angles
!*				
!*	
!*	  VARIABLES:
!*
!*		Input -	Eparam:		Parameters (4)							- REAL
!*
!*		Output - AnglesD:	DeSparr Angles [rad] (3)				- REAL
!*
!*
!****************************************************************************/

real function ParameterToDeSparr(Eparam) result(AnglesD)
!MS$ATTRIBUTES DLLEXPORT :: ParameterToDeSparr
!MS$ATTRIBUTES ALIAS : 'ParameterToDeSparr' :: ParameterToDeSparr
dimension AnglesD(3)
real a1,a2,a3,root1,root2,Eparam(4)

	a1=2.*(Eparam(4)*Eparam(2)-Eparam(1)*Eparam(3))
	a2=2.*(Eparam(3)*Eparam(4)+Eparam(1)*Eparam(2))
	a3=2.*(Eparam(2)*Eparam(3)+Eparam(1)*Eparam(4))

	root1=sqrt(a1+1)
	root2=sqrt(-a1+1)

	AnglesD(1)=asin(a2/root1/root2)
	AnglesD(2)=-asin(a1)
	AnglesD(3)=asin(a3/root1/root2)

end function

!****************************************************************************/
!*
!*    FUNCTION:				ParameterToEuler(Eparam)
!*
!*    PURPOSE:	Transforms Hamilton-Rodriguez Parameters to Euler Angles
!*				
!*	
!*	  VARIABLES:
!*
!*		Input -	Eparam:		Parameters (4)							- REAL
!*
!*		Output - AnglesE:	Euler Angles [rad] (3)					- REAL
!*
!*
!****************************************************************************/

real function ParameterToEuler(Eparam) result(AnglesE)
!MS$ATTRIBUTES DLLEXPORT :: ParameterToEuler
!MS$ATTRIBUTES ALIAS : 'ParameterToEuler' :: ParameterToEuler
dimension AnglesE(3)
real a1,a2,a3,root1,root2,Eparam(4)

	a1=(Eparam(4)*Eparam(4)+Eparam(1)*Eparam(1))
	a2=(Eparam(3)*Eparam(4)+Eparam(1)*Eparam(2))
	a3=(Eparam(2)*Eparam(4)+Eparam(1)*Eparam(3))

	root1=sqrt(a1)
	root2=sqrt(-a1+1)

	AnglesE(1)=acos(a2/root1/root2)
	AnglesE(2)=acos(2*a1-1)
	AnglesE(3)=asin(a3/root1/root2)

end function

!****************************************************************************/
!*
!*    FUNCTION:				VecAngToParameter(Vec, Angle)
!*
!*    PURPOSE:	Transforms Vector-Angle to Hamilton-Rodriguez Parameters
!*				
!*	
!*	  VARIABLES:
!*
!*		Input -	Vec:		Vector of rotation axis (3)				- REAL
!*				Angle:		Angle of Coordinate System
!*							rotation [rad] (Scalar)					- REAL
!*
!*		Output - Eparam:	Parameters (3)							- REAL
!*
!*
!****************************************************************************/

real function VecAngToParam(Vec,Angle) result(Eparam)
!MS$ATTRIBUTES DLLEXPORT :: VecAngToParam
!MS$ATTRIBUTES ALIAS : 'VecAngToParam' :: VecAngToParam
dimension Eparam(4)
real Vec(3),Angle

	Eparam(1)=cos(Angle/2.)
	Eparam(2)=Vec(1)*sin(Angle/2.)
	Eparam(3)=Vec(2)*sin(Angle/2.)
	Eparam(4)=Vec(3)*sin(Angle/2.)
	

end function

!****************************************************************************/
!*
!*    FUNCTION:				LToDeSparr(L)
!*
!*    PURPOSE:	Calculates DeSparr Angles from Transformation Matrix
!*				
!*	
!*	  VARIABLES:
!*
!*		Input -	L:			Transformation Matrix (3x3)				- REAL
!*
!*		Output - AnglesD:	DeSparr Angles [rad] (3) 				- REAL
!*
!*
!****************************************************************************/

real function LToDeSparr(L) result(AnglesD)
!MS$ATTRIBUTES DLLEXPORT :: LToDeSparr
!MS$ATTRIBUTES ALIAS : 'LToDeSparr' :: LToDeSparr
dimension AnglesD(3)
real root1,root2,L(3,3)

	root1=sqrt(L(1,3)+1.)
	root2=sqrt(-L(1,3)+1.)

	AnglesD(1)=asin(L(2,3)/root1/root2)
	AnglesD(2)=-asin(L(1,3))
	AnglesD(3)=acos(L(1,1)/root1/root2)

end function

!****************************************************************************/
!*
!*    FUNCTION:				LToEuler(L)
!*
!*    PURPOSE:	Calculates Euler Angles from Transformation Matrix
!*				
!*	
!*	  VARIABLES:
!*
!*		Input -	L:			Transformation Matrix (3x3)				- REAL
!*
!*		Output - AnglesE:	Euler Angles [rad] (3)					- REAL
!*
!*
!****************************************************************************/

real function LToEuler(L) result(AnglesE)

dimension AnglesE(3)
real root1,root2,L(3,3)

	root1=sqrt(L(3,3)+1.)
	root2=sqrt(-L(3,3)+1.)

	AnglesE(1)=acos(L(2,3)/root1/root2)
	AnglesE(2)=acos(L(3,3))
	AnglesE(3)=asin(L(3,1)/root1/root2)

end function

!****************************************************************************/
!*
!*    FUNCTION:				LToParameter(L)
!*
!*    PURPOSE:	Calculates Hamilton-Rodriguez Parameters
!*				from Transformation Matrix
!*				
!*	
!*	  VARIABLES:
!*
!*		Input -	L:			Transformation Matrix (3x3)				- REAL
!*
!*		Output - Eparam:	Parameters (4)							- REAL
!*
!*
!****************************************************************************/

real function LToParameters(L) result(Eparam)
!MS$ATTRIBUTES DLLEXPORT :: LToParameters
!MS$ATTRIBUTES ALIAS : 'LToParameters' :: LToParameters
dimension Eparam(3)
real L(3,3)

	Eparam(1)=sqrt(L(1,1)+L(2,2)+L(3,3)+1.)/2.
	Eparam(2)=(L(3,2)-L(2,3))/4./Eparam(1)
	Eparam(2)=(L(1,3)-L(3,1))/4./Eparam(1)
	Eparam(2)=(L(2,1)-L(1,2))/4./Eparam(1)

end function

!****************************************************************************/
!*
!*    FUNCTION:				DeSparrToL(AnglesD)
!*
!*    PURPOSE:	Calculates Transformation Matrix from DeSparr Angles
!*				
!*	
!*	  VARIABLES:
!*
!*		Input -	AnglesD:	DeSparr Angles [rad] (3)				- REAL
!*
!*		Output - L:			Transformation Matrix (3x3)				- REAL
!*
!*
!****************************************************************************/
!subroutine DeSparrToL(AnglesD,L)
real function DeSparrToL(AnglesD) result(L)
!MS$ATTRIBUTES DLLEXPORT :: DeSparrToL
!MS$ATTRIBUTES ALIAS : 'DeSparrToL' :: DeSparrToL
dimension L(3,3)
real cphi,cth,cpsi,sphi,sth,spsi,AnglesD(3)
!real L(3,3)

	cphi=cos(AnglesD(1))
	cth=cos(AnglesD(2))
	cpsi=cos(AnglesD(3))

	sphi=sin(AnglesD(1))
	sth=sin(AnglesD(2))
	spsi=sin(AnglesD(3))

	L(1,1)=cth*cpsi
	L(1,2)=cth*spsi
	L(1,3)=-sth
	L(2,1)=sphi*sth*cpsi-cphi*spsi
	L(2,2)=sphi*sth*spsi+cphi*cpsi
	L(2,3)=sphi*cth
	L(3,1)=cphi*sth*cpsi+sphi*spsi
	L(3,2)=cphi*sth*spsi-sphi*cpsi
	L(3,3)=cphi*cth
!end subroutine
end function

!****************************************************************************/
!*
!*    FUNCTION:				EulerToL(AnglesE)
!*
!*    PURPOSE:	Calculates Transformation Matrix from Euler Angles
!*				
!*	
!*	  VARIABLES:
!*
!*		Input -	AnglesE:	Euler Angles [rad] (3)					- REAL
!*
!*		Output - L:			Transformation Matrix (3x3)				- REAL
!*
!*
!****************************************************************************/

real function EulerToL(AnglesE) result(L)
!MS$ATTRIBUTES DLLEXPORT :: EulerToL
!MS$ATTRIBUTES ALIAS : 'EulerToL' :: EulerToL
dimension L(3,3)
real cphi,cth,cpsi,sphi,sth,spsi,AnglesE(3)

	cphi=cos(AnglesE(1))
	cth=cos(AnglesE(2))
	cpsi=cos(AnglesE(3))

	sphi=sin(AnglesE(1))
	sth=sin(AnglesE(2))
	spsi=sin(AnglesE(3))

	L(1,1)=cphi*cpsi-spsi*cth*spsi
	L(1,2)=cphi*spsi+sphi*cth*cpsi
	L(1,3)=sphi*sth
	L(2,1)=-sphi*cpsi-cphi*cth*spsi
	L(2,2)=-sphi*spsi+cphi*cth*cpsi
	L(2,3)=cphi*sth
	L(3,1)=sth*spsi
	L(3,2)=-sth*cpsi
	L(3,3)=cth

end function

!****************************************************************************/
!*
!*    FUNCTION:				ParameterToL(Eparam)
!*
!*    PURPOSE:	Calculates Transformation Matrix from
!*				Hamilton-Rodriguez parameters
!*				
!*	
!*	  VARIABLES:
!*
!*		Input -	Eparam:		Parameters (4)							- REAL
!*
!*		Output - L:			Transformation Matrix (3x3)				- REAL
!*
!*
!****************************************************************************/

real function ParameterToL(Eparam) result(L)
!MS$ATTRIBUTES DLLEXPORT :: ParameterToL
!MS$ATTRIBUTES ALIAS : 'ParameterToL' :: ParameterToL
dimension L(3,3)
real e00,e01,e02,e03,e12,e13,e23,Eparam(4)

	e00=Eparam(1)*Eparam(1)
	e01=Eparam(1)*Eparam(2)
	e02=Eparam(1)*Eparam(3)
	e03=Eparam(1)*Eparam(4)
	e12=Eparam(2)*Eparam(3)
	e13=Eparam(2)*Eparam(4)
	e23=Eparam(3)*Eparam(4)

	L(1,1)=2.*(Eparam(2)*Eparam(2)+e00)-1
	L(1,2)=2.*(e12+e03)
	L(1,3)=2.*(e13-e02)
	L(2,1)=2.*(e12-e03)
	L(2,2)=2.*(Eparam(3)*Eparam(3)+e00)-1
	L(2,3)=2.*(e23+e01)
	L(3,1)=2.*(e13+e02)
	L(3,2)=2.*(e23-e01)
	L(3,3)=2.*(Eparam(4)*Eparam(4)+e00)-1

end function

!****************************************************************************/
!*
!*    FUNCTION:				SteinerToCM(Iin,CMvect,Mass)
!*
!*    PURPOSE:	Translates Moments Of Inertia Tensor to Mass Center pointed by
!*				CMvect vector
!*	
!*	  VARIABLES:
!*
!*		Input -	Iin:		Moments Of Inertia Tensor (3x3)			- REAL
!*				CMvect:		Translation Vector (3)					- REAL
!*				Mass:		Mass (Scalar)							- REAL
!*
!*		Output - Iout:		Translated Moments Of Inertia Tensor (3x3)- REAL
!*
!*
!****************************************************************************/

real function SteinerToCM(Iin, CMvect, Mass) result(Iout)
!MS$ATTRIBUTES DLLEXPORT :: SteinerToCM
!MS$ATTRIBUTES ALIAS : 'SteinerToCM' :: SteinerToCM
dimension Iout(3,3)
real Iin(3,3), CMvect(3), Mass

	Iout(1,1)=Iin(1,1)-CMvect(1)*CMvect(1)*Mass
	Iout(2,1)=Iin(2,1)-CMvect(2)*CMvect(1)*Mass
	Iout(3,1)=Iin(3,1)-CMvect(3)*CMvect(1)*Mass
	Iout(2,2)=Iin(2,2)-CMvect(2)*CMvect(2)*Mass
	Iout(3,2)=Iin(2,3)-CMvect(3)*CMvect(2)*Mass
	Iout(3,3)=Iin(3,3)-CMvect(3)*CMvect(3)*Mass
	
	Iout(2,1)=Iout(1,2)
	Iout(3,1)=Iout(1,3)
	Iout(2,3)=Iout(3,2)

end function

!****************************************************************************/
!*
!*    SUBROUTINE:			SteinerFromCM(Iin,CMvect,Mass)
!*
!*    PURPOSE:	Translates Moments Of Inertia Tensor From Mass Center to point
!*				pointed by Ovect vector
!*	
!*	  VARIABLES:
!*
!*		Input -	Iin:		Moments Of Inertia Tensor (3x3)			- REAL
!*				Ovect:		Translation Vector (3)					- REAL
!*				Mass:		Mass (Scalar)							- REAL
!*
!*		Output - Iout:		Translated Moments Of Inertia Tensor (3x3)- REAL
!*
!*
!****************************************************************************/

real function SteinerFromCM(Iin, Ovect, Mass) result(Iout)
!MS$ATTRIBUTES DLLEXPORT :: SteinerFromCM
!MS$ATTRIBUTES ALIAS : 'SteinerFromCM' :: SteinerFromCM
dimension Iout(3,3)	
real Iin(3,3), Ovect(3), Mass

	Iout(1,1)=Iin(1,1)+Ovect(1)*Ovect(1)*Mass
	Iout(2,1)=Iin(2,1)+Ovect(2)*Ovect(1)*Mass
	Iout(3,1)=Iin(3,1)+Ovect(3)*Ovect(1)*Mass
	Iout(2,2)=Iin(2,2)+Ovect(2)*Ovect(2)*Mass
	Iout(3,2)=Iin(2,3)+Ovect(3)*Ovect(2)*Mass
	Iout(3,3)=Iin(3,3)+Ovect(3)*Ovect(3)*Mass
	
	Iout(2,1)=Iout(1,2)
	Iout(3,1)=Iout(1,3)
	Iout(2,3)=Iout(3,2)

end function

!****************************************************************************/
!*
!*    FUNCTION:				RotateTensor(Iin, L)
!*
!*    PURPOSE:	Rotates Moments Of Inertia Tensor for angles contained in
!*				Transformation matrix L
!*	
!*	  VARIABLES:
!*
!*		Input -	Iin:		Moments Of Inertia Tensor (3x3)			- REAL
!*				L:			Transformation matrix (3x3)				- REAL
!*
!*		Output - Iout:		Rotated Moments Of Inertia Tensor (3x3)	- REAL
!*
!*
!****************************************************************************/

!subroutine RotateTensor(Iin, L, Iout)
real function RotateTensor(Iin, L) result(Iout)
!MS$ATTRIBUTES DLLEXPORT :: RotateTensor
!MS$ATTRIBUTES ALIAS : 'RotateTensor' :: RotateTensor
dimension Iout(3,3)	
real Iin(3,3), L(3,3)
!real Iout(3,3)
	

	Iout(1,1)=L(1,1)*L(1,1)*Iin(1,1)+2.*L(1,1)*L(2,1)*Iin(1,2)+2.*L(1,1)*&
			L(3,1)*Iin(1,3)+L(2,1)*L(2,1)*Iin(2,2)+2.*L(2,1)*L(3,1)*&
			Iin(2,3)+L(3,1)*L(3,1)*Iin(3,3)
	Iout(1,2)=L(1,1)*L(1,2)*Iin(1,1)+(L(1,2)*L(2,1)+L(1,1)*L(2,2))*&
			Iin(1,2)+(L(1,2)*L(3,1)+L(1,1)*L(3,2))*Iin(1,3)+L(2,1)*&
			L(2,2)*Iin(2,2)+(L(2,2)*L(3,1)+L(2,1)*L(3,2))*Iin(2,3)+&
			L(3,1)*L(3,2)*Iin(3,3)
	Iout(1,3)=L(1,1)*L(1,3)*Iin(1,1)+(L(1,3)*L(2,1)+L(1,1)*L(2,3))*&
			Iin(1,2)+(L(1,3)*L(3,1)+L(1,1)*L(3,3))*Iin(1,3)+L(2,1)*&
			L(2,3)*Iin(2,2)+(L(2,3)*L(3,1)+L(2,1)*L(3,3))*Iin(2,3)+&
			L(3,1)*L(3,3)*Iin(3,3)
	Iout(2,2)=L(1,2)*L(1,2)*Iin(1,1)+2.*L(1,2)*L(2,2)*Iin(1,2)+2.*L(1,2)*&
			L(3,2)*Iin(1,3)+L(2,2)*L(2,2)*Iin(2,2)+2.*L(2,2)*L(3,2)*&
			Iin(2,3)+L(3,2)*L(3,2)*Iin(3,3)
	Iout(2,3)=L(1,2)*L(1,3)*Iin(1,1)+(L(1,3)*L(2,2)+L(1,2)*L(2,3))*&
			Iin(1,2)+(L(1,3)*L(3,2)+L(1,2)*L(3,3))*Iin(1,3)+L(2,2)*&
			L(2,3)*Iin(2,2)+(L(2,3)*L(3,2)+L(2,2)*L(3,3))*Iin(2,3)+&
			L(3,2)*L(3,3)*Iin(3,3)
	Iout(3,3)=L(1,3)*L(1,3)*Iin(1,1)+2.*L(1,3)*L(2,3)*Iin(1,2)+2.*L(1,3)*&
			L(3,3)*Iin(1,3)+L(2,3)*L(2,3)*Iin(2,2)+2.*L(2,3)*L(3,3)*&
			Iin(2,3)+L(3,3)*L(3,3)*Iin(3,3)
	Iout(2,1)=Iout(1,2)
	Iout(3,1)=Iout(1,3)
	Iout(3,2)=Iout(2,3)
!end subroutine
end function

!****************************************************************************/
!*
!*    SUBROUTINE:			MainInerMom(Iin, L, Iout)
!*
!*    PURPOSE:	Finds Main Moments Of Inertia Tensor and angles of Main Axes
!*				(contained in L Transformation matrix on output)
!*	
!*	  VARIABLES:
!*
!*		Input -	Iin:		Moments Of Inertia Tensor (3x3)			- REAL
!*
!*		Output -L:			Transformation Matrix (3x3)				- REAL
!*				Iout:		Main Moments Of Inertia Tensor (3x3)	- REAL
!*
!*
!****************************************************************************/

subroutine MainInerMom (Iin, L, Iout)
!MS$ATTRIBUTES DLLEXPORT :: MainInerMom
!MS$ATTRIBUTES ALIAS : 'MainInerMom' :: MainInerMom
real Iin(3,3), Iout(3,3), L(3,3)

	call EVCSF(3,Iin,3,Iout,L,3)

return
end subroutine

!****************************************************************************/
!*
!*    SUBROUTINE:			ParameterToVecAng(Eparam, Vec, Ang)
!*
!*    PURPOSE:	Calculates vector Vec and angle Ang of Coordinate
!*				System roation from Hamilton-Rodriguez parameters
!*	
!*	  VARIABLES:
!*
!*		Input -	Eparam:		Parameters (4)							- REAL
!*
!*		Output -Vec:		Vector of rotation axis (3)				- REAL
!*				Ang:		Angle of Coordinate System
!*							rotation [rad] (Scalar)					- REAL
!*
!*
!****************************************************************************/

subroutine ParameterToVecAng (Eparam, Vec, Ang)
!MS$ATTRIBUTES DLLEXPORT :: ParameterToVecAng
!MS$ATTRIBUTES ALIAS : 'ParameterToVecAng' :: ParameterToVecAng
real Eparam(4),Vec(3),Ang,sAng

	Ang=2.*acos(Eparam(1))

	sAng=1./sin(Ang/2)

	Vec(1)=Eparam(2)*sAng
	Vec(2)=Eparam(3)*sAng
	Vec(3)=Eparam(4)*sAng

return
end subroutine
