class Audio {
    var path: String
    var name: String
    
    init(path: String) {
        self.path = path
        self.name = ""
    }
    
    init(path: String, name: String) {
        self.path = path
        self.name = name // Corrigé : utilise le paramètre name
    }
    
    func getPath() -> String {
        return path
    }
}
