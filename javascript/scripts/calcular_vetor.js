function calcular_vetor(){

    var vector_two = []
    var vector_three = []
    var vector_four = []

    var sum_vector_two = 0
    var sum_vector_three = 0

    var vector_average = 0

        alert( "First, type 3 numbers for our first vector!" )
            for( var counterA = 1; counterA < 4 ; counterA++ ){
                vector_two[counterA] = parseInt( prompt( counterA + "º number: " ))

    }

        alert( "Now, type 3 more numbers for our second vector!" )
            for( var counterB = 1; counterB < 4 ; counterB++ ){
                vector_three[counterB] = parseInt(prompt( counterB + "º number: " ))

    }
    
        for( var counterC = 1; counterC < 6 ; counterC++ ){
            vector_four[counterC] = vector_two[counterC] + vector_three[counterC]

        sum_vector_two += vector_two[counterC]
        sum_vector_three += vector_three[counterC]

        vector_average += vector_four[counterC] / 6

    }

    alert( "Elements of first vector:  [" + vector_two + "]\n" + 
            "Elements of second vector:  [" + vector_three + "]" )


    alert( "For sure, the fisrt vector has " + vector_two.length + 
            " elements and the second vector also has " + vector_three.length + 
            " elements. The second element of each one is " + vector_two[2] + 
            " and " + vector_three[2] + ", respectively." )

    
    alert("Sum of fisrt vector:  [" + sum_vector_two + "]\n" + 
            "Sum of second vector:  [" + sum_vector_three + "]" )


    alert( "Gathering both vectors we have: \n" + "[" + vector_four + "]" )


    alert( "The average of this third vector is " + Math.round( vector_average ) )

}