!****************************************************************************/
!*
!*    SUBROUTINE:			Kon219(In, Mout, CMout, Iout)
!*
!*    PURPOSE:	Calculates Mass, Mass Center and Inertia Momentum Tensor
!*				of body element according to Favorin - Body Inertia Momentum
!*	
!*	  VARIABLES:
!*
!*		Input -	In:			Basic data for calculating (20)		- REAL
!*
!*		Output - Mout:		Mass (Scalar)							- REAL
!*				 CMout:		Mass Center Vector of element (3)		- REAL
!*				 Iout:		Inertia Momentum Tensor of
!*							element (3x3)							- REAL
!*
!****************************************************************************/

subroutine Kon219(In, Mout, CMout, Iout)
!MS$ATTRIBUTES DLLEXPORT :: Kon219
!MS$ATTRIBUTES ALIAS : 'Kon219' :: Kon219
real In(20), Mout, Cmout(3), Iout(3,3)

	return
end subroutine