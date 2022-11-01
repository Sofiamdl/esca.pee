//
//  ImageConstants.swift
//  dispersinhos
//
//  Created by sml on 21/10/22.
//

class ImageConstants {
    
    static let shared = ImageConstants()
    private init(){}
    
    //Backgrounds
    let BACKGROUND_LAB = "background-lab"
    let BACKGROUND_COUCH = "background-couch"
    let BACKGROUND_LOCKERS = "background-lockers"
    let BACKGROUND_BATHROOM = "background-bathroom"
    
    //Lab Scene
    let TABLE = "table"
    let COMPUTER = "computer"
    let SECONDE_TABLE = "second-table"
    let THIRD_TABLE = "third-table"
    let BOOKSHELF = "bookshelf"
    let DOOR = "door"
    
    //Couch Scene
    let COUCH = "couch"
    
    //Lockers Scene
    let TABLE_COUCH = "lockers-couch"
    let CHAIRS = "chairs"
    let POUF = "pouf"
    let LAMPS = "lockers-lamps"
    let LOCKERS = "lockers"
    
    //Collectables
    let PAPER = "paper"
    let COFFEEMUG = "coffee-mug"
    let TEST_IMAGE = "chave-de-fenda"
    
    //Zoom-screens
    let ZOOM_TABLE = "zoom-table"

    let SCREWDRIVER = "chave-de-fenda"
    let ADAPTER = "adapter"
    let LUNCHBOX = "lunchbox"
    // na vdd a lancheira só vai ter um on tap gesture que "abre" ela e libera o papel, que será o coletável
    let DOMINO = "domino"
    let TAPE = "tape"

}
