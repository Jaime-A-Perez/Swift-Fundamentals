import UIKit


func canThrowError() throws{
    
    
}

do{
  try  canThrowError()
    //si llega a aqui no hay error
}catch {
//    si llegamos a qui ,hay un error
}


func makeASandwich() throws{
    
}

do {
    try makeASandwich()
    // Me como el sandwich
}catch {
    // tengo platos limpios... -> Lavar los platos
    // tengo ingredientes -> Comparar ingredientes
}



// Asserciones (debug) y precondiciones (build)

let age = -4
precondition(age >= 0, "La edad de una persona no puede ser negativa")
//assert(age >= 0, "La edad de una persona no puede ser negativa")

if age > 10 {
    print("Puedes subir a la montaña rusa")
}else if age >= 0 {
    print("Eres demasiado pequeño para subir a la montaña rusa")
}else {
    assertionFailure("La edad de una persona no puede ser negativa")
}



