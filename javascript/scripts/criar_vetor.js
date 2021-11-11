function criar_vetor(){

    var vector_one = []

    alert( "Please, type 5 numbers for our first vector!" )
        for( var counterZ = 1 ; counterZ < 6 ; counterZ++ ){
            vector_one[counterZ] = parseInt( prompt( counterZ + "º number: " ))

        alert("[" + vector_one + "]")

        for( var counterF = 0; counterF < vector_one.length ; counterF++ ){

            if( vector_one[counterF] == 1 ){
                alert( "The element 1 of our vector is in position " + counterF + "!" )

            } else{
                alert( "There is no element 1 in our vector!" )

            }   
        }

        document.getElementById("vector_one-value").innerText = vector_one

    }
}