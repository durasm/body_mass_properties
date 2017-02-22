!****************************************************************************/
!*
!*    SUBROUTINE:			Prim1(In, Mout, CMout, Iout)
!*
!*    PURPOSE:	Calculates Mass, Mass Center and Inertia Momentum Tensor
!*				of body element according to Favorin - Body Inertia Momentum
!*	
!*	  VARIABLES:
!*
!*		Input -	In:			Basic data for calculating (20)			- REAL
!*
!*		Output - Mout:		Mass (Scalar)							- REAL
!*				 CMout:		Mass Center Vector of element (3)		- REAL
!*				 Iout:		Inertia Momentum Tensor of
!*							element (3x3)							- REAL
!*
!****************************************************************************/

subroutine Prim1(In, Mout, CMout, Iout)
!MS$ATTRIBUTES DLLEXPORT :: Prim1
!MS$ATTRIBUTES ALIAS : 'Prim1' :: Prim1
real In(20),Mout,CMout(3),Iin(3,3),Iout(3,3)
real R,Rho,RefPoint
real Eparam(4)
real V,x0,y0,z0,L(3,3),Vin(3),Vout(3)
parameter (Pi=3.14159)

interface

	subroutine ParameterToL (Eparam, L)
    !MS$ATTRIBUTES DLLIMPORT :: ParameterToL
	!MS$ATTRIBUTES ALIAS : 'ParameterToL' :: ParameterToL
	real Eparam(4), L(3,3)
    end subroutine

	subroutine RotateTensor (Iin, L, Iout1)
    !MS$ATTRIBUTES DLLIMPORT :: RotateTensor
	!MS$ATTRIBUTES ALIAS : 'RotateTensor' :: RotateTensor
	real Iin(3,3), L(3,3), Iout1(3,3)
	end subroutine

	subroutine TransformVector (Vin, L, Vout1)
    !MS$ATTRIBUTES DLLIMPORT :: TransformVector
	!MS$ATTRIBUTES ALIAS : 'TransformVector' :: TransformVector
	real Vin(3), L(3,3), Vout1(3)
	end subroutine

end interface


!*
!*	Initialization....
!*

	do i=1,3
		do j=1,3
			Iin(i,j)=0.0
		end do
	end do

	R=In(1)

	RefPoint=In(9)

	CMout(1)=In(10)
	CMout(2)=In(11)
	CMout(3)=In(12)

	Eparam(1)=In(13)
	Eparam(2)=In(14)
	Eparam(3)=In(15)
	Eparam(4)=In(16)

	Rho=In(17)

	
!*
!*	Here starts calculation...
!*

!*
!*	Volume and Mass...
!*
	
	V=4./3.*Pi*R*R*R
	Mout=V*Rho

!*
!*	Mass Center position...
!*

	x0=0.0
	y0=0.0
	z0=0.0

	Vin(1)=x0
	Vin(2)=y0
	Vin(3)=z0


!*
!*	Moments of Inertia Tensor...
!*	
	Iin(1,1)=0.4*Mout*R*R

	Iin(2,2)=Iin(1,1)

	Iin(3,3)=Iin(1,1)

!*
!*	Rotating Iout Tensor and vector x0,y0,z0 (if needed)...
!*

!	if (Eparam(1)**2+Eparam(2)**2+Eparam(3)**2+Eparam(4)**2 .ne. 0.0) then
		call ParameterToL(Eparam,L)
		call RotateTensor(Iin,L,Iout)
!	end if

!*
!*	Vector pointing from O to CM...
!*

select case (int(RefPoint))

	case (2)

		Vin(2)=Vin(2)-R

end select

		call TransformVector(Vin,L,Vout)

		CMout(1)=CMout(1)+Vout(1)
		CMout(2)=CMout(2)+Vout(2)
		CMout(3)=CMout(3)+Vout(3)

end subroutine

!****************************************************************************/
!*
!*    SUBROUTINE:			Prim2(In, Mout, CMout, Iout)
!*
!*    PURPOSE:	Calculates Mass, Mass Center and Inertia Momentum Tensor
!*				of body element according to Favorin - Body Inertia Momentum
!*	
!*	  VARIABLES:
!*
!*		Input -	In:			Basic data for calculating (20)			- REAL
!*
!*		Output - Mout:		Mass (Scalar)							- REAL
!*				 CMout:		Mass Center Vector of element (3)		- REAL
!*				 Iout:		Inertia Momentum Tensor of
!*							element (3x3)							- REAL
!*
!****************************************************************************/

subroutine Prim2(In, Mout, CMout, Iout)
!MS$ATTRIBUTES DLLEXPORT :: Prim2
!MS$ATTRIBUTES ALIAS : 'Prim2' :: Prim2
real In(20),Mout,CMout(3),Iin(3,3),Iout(3,3)
real A,B,C,Rho,RefPoint
real Eparam(4)
real V,x0,y0,z0,L(3,3),Vin(3),Vout(3)

interface

	subroutine ParameterToL (Eparam, L)
    !MS$ATTRIBUTES DLLIMPORT :: ParameterToL
	!MS$ATTRIBUTES ALIAS : 'ParameterToL' :: ParameterToL
	real Eparam(4), L(3,3)
    end subroutine

	subroutine RotateTensor (Iin, L, Iout)
    !MS$ATTRIBUTES DLLIMPORT :: RotateTensor
	!MS$ATTRIBUTES ALIAS : 'RotateTensor' :: RotateTensor
	real Iin(3,3), L(3,3), Iout(3,3)
	end subroutine

	subroutine TransformVector (Vin, L, Vout)
    !MS$ATTRIBUTES DLLIMPORT :: TransformVector
	!MS$ATTRIBUTES ALIAS : 'TransformVector' :: TransformVector
	real Vin(3), L(3,3), Vout(3)
	end subroutine

end interface


!*
!*	Initialization....
!*

	do i=1,3
		do j=1,3
			Iin(i,j)=0.0
		end do
	end do

	A=In(1)
	B=In(2)
	C=In(3)

	RefPoint=In(9)

	CMout(1)=In(10)
	CMout(2)=In(11)
	CMout(3)=In(12)

	Eparam(1)=In(13)
	Eparam(2)=In(14)
	Eparam(3)=In(15)
	Eparam(4)=In(16)

	Rho=In(17)

	
!*
!*	Here starts calculation...
!*

!*
!*	Volume and Mass...
!*
	
	V=A*B*C
	Mout=V*Rho

!*
!*	Mass Center position...
!*

	x0=0.0
	y0=0.0
	z0=0.0

	Vin(1)=x0
	Vin(2)=y0
	Vin(3)=z0


!*
!*	Moments of Inertia Tensor...
!*	
	Iin(1,1)=1./12.*Mout*(B*B+C*C)

	Iin(2,2)=1./12.*Mout*(C*C+A*A)

	Iin(3,3)=1./12.*Mout*(A*A+B*B)

!*
!*	Rotating Iout Tensor and vector x0,y0,z0 (if needed)...
!*

!	if (Eparam(1)**2+Eparam(2)**2+Eparam(3)**2+Eparam(4)**2 .ne. 0.0) then
		call ParameterToL(Eparam,L)
		call RotateTensor(Iin,L,Iout)
!	end if

!*
!*	Vector pointing from O to CM...
!*

select case (int(RefPoint))

	case (2)

		Vin(2)=Vin(2)+B/2.
		Vin(3)=Vin(3)+C/2.

	case (3)

		Vin(1)=Vin(1)-A/2.
		Vin(2)=Vin(2)+B/2.
		Vin(3)=Vin(3)+C/2.

end select

		call TransformVector(Vin,L,Vout)

		CMout(1)=CMout(1)+Vout(1)
		CMout(2)=CMout(2)+Vout(2)
		CMout(3)=CMout(3)+Vout(3)

end subroutine
