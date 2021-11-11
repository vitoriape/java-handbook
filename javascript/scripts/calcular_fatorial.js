function calcular_fatorial(){

    var logicalChoose = confirm( "Would you like to calculate factorials?" );
        
        if ( logicalChoose == true ){
            var cNumber, cFactorial
        
            cNumber = prompt( "Please, type a number to calc your factorials: ")
            cFactorial = 1

        for ( var counterX = 1; counterX <= cNumber; counterX++ ) {
            cFactorial = cFactorial * counterX  

            alert( "The factorial of " + cNumber + " is: " + cFactorial )

            }

        }else{
            alert( "Thanks!" )
                  
        }    

    document.getElementById("cFactorial-value").innerText = cFactorial

}