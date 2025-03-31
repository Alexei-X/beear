class AudioController {
    init() {
        
    }
    
    public func createNotes() -> [Note] {
        return [
            Note(path: AudioPaths.do_note.rawValue, name: "Do", gamme: .major),
            Note(path: AudioPaths.re_note.rawValue, name: "Re", gamme: .major),
            Note(path: AudioPaths.mi_note.rawValue, name: "Mi", gamme: .major),
            Note(path: AudioPaths.fa_note.rawValue, name: "Fa", gamme: .major),
            Note(path: AudioPaths.sol_note.rawValue, name: "Sol", gamme: .major),
            Note(path: AudioPaths.la_note.rawValue, name: "La", gamme: .major),
            Note(path: AudioPaths.si_note.rawValue, name: "Si", gamme: .major),
            Note(path: AudioPaths.do_note_diese.rawValue, name: "Do_Diese", gamme: .major),
            Note(path: AudioPaths.re_note_diese.rawValue, name: "Re_Diese", gamme: .major),
            //Note(path: AudioPaths.mi_note_diese.rawValue, name: "Mi_Diese", gamme: .major),
            Note(path: AudioPaths.fa_note_diese.rawValue, name: "Fa_Diese", gamme: .major),
            Note(path: AudioPaths.sol_note_diese.rawValue, name: "Sol_Diese", gamme: .major),
            Note(path: AudioPaths.la_note_diese.rawValue, name: "La_Diese", gamme: .major),
            //Note(path: AudioPaths.si_note_diese.rawValue, name: "Si_Diese", gamme: .major),
        ]
    }
}
