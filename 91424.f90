program main
  implicit none
  integer :: i
  real :: a(2)
  do i=1,3,-1
     a(i) = 2.
  end do
  print *,a
end program main

