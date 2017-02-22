
!****************************************************************************/
!*
!*    SUBROUTINE:			Tor1(In, Mout, Oout, Iout)
!*
!*    PURPOSE:	Calculates Mass, Mass Center and Inertia Momentum Tensor
!*				of body element according to Favorin - Body Inertia Momentum
!*	
!*	  VARIABLES:
!*
!*		Input -	In:			Basic data for calculating (20)			- REAL
!*
!*		Output - Mout:		Mass (Scalar)							- REAL
!*				 Oout:		Vector to CM of element (3)				- REAL
!*				 Iout:		Inertia Momentum Tensor of
!*							element (3x3)							- REAL
!*
!****************************************************************************/

subroutine Tor1(In, Mout, CMout, Iout)
!MS$ATTRIBUTES DLLEXPORT :: Tor1
!MS$ATTRIBUTES ALIAS : 'Tor1' :: Tor1
real In(20), Mout, CMout(3), Iout(3,3),Vin(3),Vout(3),Iin(3,3)
real R,R1,Rlc,H,Hlc,Phi,Rho,RefPoint
real Eparam(4)
real K,t,d,Pt,PH,c,Tsq
real V,x0,y0,z0,L(3,3)

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
	R1=In(2)
	Rlc=In(3)
	H=In(4)
	Hlc=In(5)
	Phi=In(6)

	RefPoint=in(9)

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

	K=R-(R1-Rlc)
	t=H-Hlc
	d=sqrt(Rlc*(2.*R1-Rlc))
	Pt=sqrt((R1-Rlc)*(R1-Rlc)+t*(2.*d-t))
	PH=sqrt((R1-Rlc)*(R1-Rlc)+H*(2.*d-H))
	c=asin((d-t)/R1)-asin((d-H)/R1)

!*
!*	Volume and Mass...
!*
	
	V=2.*Phi*K*(Pt*(d-t)-PH*(d-H)+c*R1*R1)
	Mout=V*Rho

!*
!*	Mass Center position...
!*

	x0=2./3.*Phi*K/V*(Pt*(2.*(R1*R1-t*t)+d*(d+t))-PH*(2.*(R1*R1-H*H)+&
	d*(d+H))+3.*c*d*R1*R1)-t

	y0=sin(Phi)/6./V*(Pt*((12.*K*K+5.*R1*R1)*(d-t)-2.*d*d*(d-3.*t)-2.*&
	t*t*(3.*d-t))-PH*((12.*K*K+5.*R1*R1)*(d-H)-2.*d*d*(d-3.*H)-2.*H*H*&
	(3.*d-H))+3.*c*R1*R1*(4.*K*K+R1*R1))

	z0=0.0

	Vin(1)=x0
	Vin(2)=y0
	Vin(3)=0.0

!	z0=(R+PH)*sin(Phi)
	

!*
!*	Moments of Inertia Tensor...
!*	
	Tsq=K/V/8.*(Pt*((4.*K*K+5.*R1*R1)*(d-t)-2.*d*d*(d-3.*t)-2.*t*t*(3.*&
	d-t))-PH*((4.*K*K+5.*R1*R1)*(d-H)-2.*d*d*(d-3.*H)-2.*H*H*(3.*d-H))+&
	c*R1*R1*(4.*K*K+3.*R1*R1))

	Iin(1,1)=Mout*(Phi/6.*K/V*(Pt*(R1*R1*(13.*d+3.*t)+2.*d*d*(d+t)+2.*&
	t*t*(d-3.*t))-PH*(R1*R1*(13.*d+3.*H)+2.*d*d*(d+H)+2.*H*H*(d-3.*H))+&
	3.*c*R1*R1*(4.*d*d+R1*R1))-(x0+t)*(x0+t))

	Iin(2,2)=Mout*((2.*Phi+sin(2.*Phi))*Tsq-y0*y0)

	Iin(3,3)=(2.*Phi-sin(2.*Phi))*Mout*Tsq

	Iin(1,2)=Iin(2,2)+Iin(3,3)
	Iin(2,1)=Iin(1,1)+Iin(3,3)
	Iin(3,3)=Iin(1,1)+Iin(2,2)
	
	Iin(2,2)=Iin(2,1)
	Iin(1,1)=Iin(1,2)
	
	Iin(1,2)=Mout*(sin(Phi)/30./V*(Pt*(5.*(4.*K*K+R1*R1)*(2.*R1*R1+d*&
	d)-2.*(R1-Rlc)**4+t*d*(20.*K*K+7.*R1*R1-2.*d*d)-2*t*t*(20.*K*K+8.*&
	R1*R1-9.*d*d)-2.*t*t*t*(11.*d-4.*t))-PH*(5.*(4.*K*K+R1*R1)*(2.*R1*&
	R1+d*d)-2.*(R1-Rlc)**4+H*d*(20.*K*K+7.*R1*R1-2.*d*d)-2*H*H*(20.*K*&
	K+8.*R1*R1-9.*d*d)-2.*H*H*H*(11.*d-4.*H))+15.*c*R1*R1*d*(4.*K*K+&
	R1*R1))-(x0+t)*y0)

	Iin(2,1)=Iin(1,2)

!*
!*	Rotating Iout Tensor and vector x0,y0,z0 (if needed)...
!*

!	if (sqrt(Eparam(1)**2+Eparam(2)**2+Eparam(3)**2+Eparam(4)**2) .ne. 0.0) then
		call ParameterToL(Eparam,L)
		call RotateTensor(Iin,L,Iout)
!	end if

!*
!*	Vector pointing from O to CM...
!*

select case (int(RefPoint))

	case (2)

		Vin(1)=Vin(1)-Hlc

	case (3)

		Vin(1)=Vin(1)-d+H-Hlc
	
end select

		call TransformVector(Vin,L,Vout)

		CMout(1)=CMout(1)+Vout(1)
		CMout(2)=CMout(2)+Vout(2)
		CMout(3)=CMout(3)+Vout(3)

end subroutine