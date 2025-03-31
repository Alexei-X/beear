//
//  Chord.swift
//  beear
//
//  Created by Alex Bataille on 31/03/2025.
//

class Chord: Audio {
    var type: String
    
    init(audio_path: String, name: String, type: String) {
        self.type = type
        super.init(path: audio_path, name: name)
    }
    
}
