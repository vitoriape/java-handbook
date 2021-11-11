function maior_menor(){

    var counterT = 1
    var sequenceSize = parseInt( prompt( "Number of elements of the new sequence N: " ))
    
    nSequence = parseInt( prompt( "Type the " + counterT + "º" + " number: " ))
        var nMajor = nSequence
        var nMinor = nSequence
    
    for ( counterT ; counterT < sequenceSize ; counterT++ ){
        nSequence = parseInt( prompt( "Type the next number: " ))

        if( nSequence > nMajor ){
            nMajor = nSequence

        }else if ( nSequence < nMinor ){
            nMinor = nSequence

        }
    }    
    
        alert("Major number founded: " + nMajor)
        alert("Minor number founded: " + nMinor)

    document.getElementById("sequenceSize-value").innerText = sequenceSize

}