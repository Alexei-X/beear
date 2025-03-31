//
//  Note.swift
//  beear
//
//  Created by Alex Bataille on 31/03/2025.
//

import Foundation

class Note: Audio {
    var gamme: MusicalScale?
    
    init(path: String, name: String, gamme: MusicalScale? = nil) {
        super.init(path: path, name: name)
        self.gamme = gamme
    }
    
    // Optionnel : Méthode pour récupérer le nom de la note
    override func getPath() -> String {
        return super.getPath()
    }
}
