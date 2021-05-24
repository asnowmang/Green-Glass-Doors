program ggd
  implicit none
  character(len=32)  :: input
  integer  :: n
  logical  :: pas = .false.

  read(*,*) input

  do n = 1, len(trim(input)) - 1
     if (input(n:n) .eq. input(n+1:n+1)) then
        pas = .true.
        exit
     else
        continue
     endif
  enddo

  if (pas .eqv. .true.) then
     print *, "You may pass the Green Glass Doors"
  else
     print *, "nope"
  endif  
  
end program ggd
