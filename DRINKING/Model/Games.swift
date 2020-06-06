//
//  Games.swift
//  DRINKING
//
//  Created by Adrià Sala Roget on 06/06/2020.
//  Copyright © 2020 Adrià Sala Roget. All rights reserved.
//

import Foundation

enum Games: Int {
    
    case yoNunca = 1
    case back2back
    case prefiero
    case quienEsMasProbable
    
    var name: String {
        switch self {
        case .yoNunca:
            return "YO NUNCA"
        case .prefiero:
            return "PREFIERO"
        case .back2back:
            return "BACK2BACK"
        case .quienEsMasProbable:
            return "QUIÉN ES + PROBABLE"
        }
    }
    
    var instructions: String {
        switch self {
        case .yoNunca:
            return """
            Se van leyendo las frases en voz alta. Todos los jugadores que hayan hecho lo que dice la frase alguna vez, beben. Por ejemplo, "Yo nunca he jugado a Drinking". Como todos estáis jugando, bebeis todos.
            """
        case .back2back:
            return """
            Dos de los jugadores se ponen de espaldas, de manera que no puedan verse entre ellos. Un jugador lee las frases. "¿Quién de los dos ha jugado más veces a Drinking?". Quien de los dos crea que ha jugado más veces bebe (sin saber lo que hace el otro). Si solo bebe uno de los dos, es decir, se ponen de acuerdo, la pareja gana y bebe el resto. De lo contrario, la pareja pierde y les toca beber a ellos.
            """
        case .prefiero:
            return """
            Se lee una frase en voz alta. A la de tres, los jugadores tienen que señalar con la mano cuál de las opciones de la frase prefieren (haciendo un 1 o un 2 con los dedos). La minoría bebe.
            """
        case .quienEsMasProbable:
            return """
            Se lee una frase en voz alta. A la de tres, todos los jugadores señalan al jugador que crean que se identifique más con la frase. La persona que más votos reciba bebe.
            """
        }
    }
    
}
