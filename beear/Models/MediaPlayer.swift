import Foundation
import AVFoundation

class MediaPlayer {
    private var player: AVAudioPlayer?
    
    func play(file_path: String) {
        do {
            guard let fileURL = Bundle.main.url(forResource: file_path, withExtension: "wav") else {
                print("Erreur : Fichier introuvable dans le bundle pour le chemin : \(file_path).wav")
                return
            }
            
            player = try AVAudioPlayer(contentsOf: fileURL)
            player?.numberOfLoops = 0
            player?.volume = 2.0
            player?.prepareToPlay()
            
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [])
            try AVAudioSession.sharedInstance().setActive(true)
            
            player?.play()
            print("Lecture du fichier : \(file_path).wav")
            
        } catch {
            print("Erreur lors de la lecture audio : \(error.localizedDescription)")
        }
    }
}
