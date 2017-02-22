!****************************************************************************
!*
!*    PROGRAM: ElemTabl.f90
!*
!*    PURPOSE: Contains library routines for calculating mass properties
!*			   of body elements according to Russian book:
!*             M. V. Farinov: “Body Moments Of Intertia”, Mashinostroenie,
!*             Moscow 1977
!*
!*
!*	  SUBROUTINES:
!*
!*
!*		  Tabl2K1(H, Hlc, a, K1)
!*		  ..........						'tabl.f90'
!*		  Tabl24K4p()
!*
!*        Tor1(In, Mout, CMout, Iout)
!*		  ..........						'tor.f90'
!*		  Tor102(Iin, Mout, CMout, Iout)
!*
!*		  Ozi103(Iin, Mout, CMout, Iout)
!*		  ..........						'ozi.f90'
!*		  Ozi116(Iin, Mout, CMout, Iout)
!*
!*		  Par117(Iin, Mout, CMout, Iout)
!*		  ..........						'par.f90'
!*		  Par124(Iin, Mout, CMout, Iout)
!*
!*		  Eli125(Iin, Mout, CMout, Iout)
!*		  ..........						'eli.f90'
!*		  Eli139(Iin, Mout, CMout, Iout)
!*
!*		  Kug140(Iin, Mout, CMout, Iout)
!*		  ..........						'kug.f90'
!*		  Kug218(Iin, Mout, CMout, Iout)
!*
!*		  Kon219(Iin, Mout, CMout, Iout)
!*		  ..........						'kon.f90'
!*		  Kon241(Iin, Mout, CMout, Iout)
!*
!*		  Cil242(Iin, Mout, CMout, Iout)
!*		  ..........						'cil.f90'
!*		  Cil297(Iin, Mout, CMout, Iout)
!*
!*		  Kom298(Iin, Mout, CMout, Iout)
!*		  ..........						'kom.f90'
!*		  Kom307(Iin, Mout, CMout, Iout)
!*
!*		  Kru308(Iin, Mout, CMout, Iout)
!*		  ..........						'kru.f90'
!*		  Kru321(Iin, Mout, CMout, Iout)
!*
!*		  Pro322(Iin, Mout, CMout, Iout)
!*		  ..........						'pro.f90'
!*        Pro402(Iin, Mout, CMout, Iout)
!*
!*		  Prim1(Iin, Mout, CMout, Iout)
!*		  ..........						'prim.f90'
!*		  Prim  (Iin, Mout, CMout, Iout)
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


