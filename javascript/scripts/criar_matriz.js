function criar_matriz(){

    var matrix = [[],[],[]]

    for( var line = 0 ; line < 3 ;  line++ ){ 
        for( var row = 0 ; row < 3 ; row++ ){

            matrix[line][row] = line * row

        }
    }   

    for( line = 0 ; line < 3 ;  line++ ){
        alert( matrix[line] )

    }
}