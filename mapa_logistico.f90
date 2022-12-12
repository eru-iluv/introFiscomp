program mapa_logistico
    implicit none
    real(8) :: x_i, xi_mi, r, temp
    integer i
    
    read(*,*) r
    read(*,*) x_i
    xi_mi = r*x_i*(1.0d0 - x_i)
    
    open(1, file="mapa_logistico.dat")

    write(1, *) "#x_i       ", "xi_mi"
    write(1, *) x_i, 0.d0

    do i = 1, 500
        ! Sobe na vertical
        write(1, *) x_i, xi_mi 
        ! Alcança na vertical
        write(1, *) xi_mi, xi_mi
        temp = xi_mi
        x_i = temp
        xi_mi = x_i*r*(1.0d0 - xi_mi) 

    end do
end program