function escolher_opcao(){

    var optionChoose = parseInt( prompt( "Type an option (1, 2, 3): " ))

    switch( optionChoose ){
        case 1:
            alert( "You choose the option 1!" )
        break;

        case 2:
            alert( "You choose the option 2!" )
        break;

        case 3:
            alert( "You choose the option 3!" )
        break;

        default:
            alert( "Invalid option!" )

        
    }

    document.getElementById("optionChoose-value").innerText = optionChoose   

}