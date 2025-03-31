import SwiftUI

struct NoteRecognitionView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var currentNote: Note = Note(path: AudioPaths.do_note.rawValue, name: "Do", gamme: .major)
    private let audioController = AudioController()
    @State private var notes: [Note] = []
    @State private var mediaPlayer = MediaPlayer()
    
    var body: some View {
        ZStack {
            Color(red: 85/255, green: 139/255, blue: 127/255)
                .ignoresSafeArea()
            
            VStack {
                Text("Notes")
                    .font(.custom("PlayfairDisplay-Bold", fixedSize: 40))
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding(.top, 50)
                
                Button(action: {
                    notes = audioController.createNotes()
                    currentNote = notes.randomElement() ?? notes[0]
                    mediaPlayer.play(file_path: currentNote.getPath())
                    print("Note jouée : \(currentNote.name) (\(currentNote.path))")
                }) {
                    Text("Lancer")
                        .padding()
                        .foregroundColor(.white)
                        .font(.custom("PlayfairDisplay-Regular", fixedSize: 25))
                        .frame(minWidth: 200, minHeight: 70)
                        .background(Color(red: 160/255, green: 47/255, blue: 37/255, opacity: 0.92))
                        .cornerRadius(25)
                }
                .padding(.vertical)
                
                Text("Note actuelle : \(currentNote.name) (\(currentNote.gamme?.rawValue ?? "Sans gamme"))")
                    .font(.custom("PlayfairDisplay-Regular", fixedSize: 20))
                    .foregroundColor(.white)
                    .padding()
                
                Spacer()
            }
            .padding()
        }
        .navigationBarHidden(true)
        .gesture(
            DragGesture()
                .onEnded { value in
                    if value.translation.width > 100 {
                        presentationMode.wrappedValue.dismiss()
                    }
                }
        )
    }
    
    private func checkAnswer(selectedNote: String) {
        if selectedNote == currentNote.name {
            print("Correct !")
        } else {
            print("Incorrect, la note était \(currentNote.name)")
        }
    }
}

#Preview {
    NoteRecognitionView()
}
