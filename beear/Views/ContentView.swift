import SwiftUI

struct ContentView: View {
    @State private var isMenuVisible = false
    @State private var aboutUsVisible = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // Fond de couleur
                Color(red: 85/255, green: 139/255, blue: 127/255)
                    .ignoresSafeArea()
                
                // Image de fond avec l'ours polaire
                Image("polar-bear")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * 0.95, height: UIScreen.main.bounds.height / 2 * 0.95)
                    .padding()
                    .opacity(0.7)
                
                // Titre centré
                VStack {
                    Text("Be Ear")
                        .font(.custom("PlayfairDisplay-Bold", fixedSize: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .padding()
                    Spacer()
                }
                
                // Menu à droite
                VStack(spacing: 20) {
                    NavigationLink(destination: NoteRecognitionView()) {
                        Text("Notes")
                            .padding(.horizontal, 25)
                            .padding(.vertical, 15)
                            .foregroundColor(.white)
                            .font(.custom("PlayfairDisplay-Regular", fixedSize: 20))
                            .frame(width: 140, height: 60)
                            .background(
                                Capsule()
                                    .fill(Color(red: 160/255, green: 47/255, blue: 37/255, opacity: 0.92))
                            )
                    }
                    .offset(x: isMenuVisible ? 0 : 200, y: isMenuVisible ? 0 : 200)
                    .opacity(isMenuVisible ? 1 : 0)
                    .animation(.spring(response: 0.5, dampingFraction: 0.6).delay(0.2), value: isMenuVisible)
                    
                    NavigationLink(destination: ChordRecognitionView()) {
                        Text("Accords")
                            .padding(.horizontal, 25)
                            .padding(.vertical, 15)
                            .foregroundColor(.white)
                            .font(.custom("PlayfairDisplay-Regular", fixedSize: 20))
                            .frame(width: 140, height: 60)
                            .background(
                                Capsule()
                                    .fill(Color(red: 160/255, green: 47/255, blue: 37/255, opacity: 0.92))
                            )
                    }
                    .offset(x: isMenuVisible ? 0 : 200) // Glisse depuis la droite
                    .opacity(isMenuVisible ? 1 : 0)
                    .animation(.spring(response: 0.5, dampingFraction: 0.6).delay(0.1), value: isMenuVisible)
                    
                    NavigationLink(destination: ProgressionSystemView()) {
                        Text("Stats")
                            .padding(.horizontal, 25)
                            .padding(.vertical, 15)
                            .foregroundColor(.white)
                            .font(.custom("PlayfairDisplay-Regular", fixedSize: 20))
                            .frame(width: 140, height: 60)
                            .background(
                                Capsule()
                                    .fill(Color(red: 160/255, green: 47/255, blue: 37/255, opacity: 0.92))
                            )
                    }
                    .offset(x: isMenuVisible ? 0 : -200, y: isMenuVisible ? 0 : 200)
                    .opacity(isMenuVisible ? 1 : 0)
                    .animation(.spring(response: 0.5, dampingFraction: 0.6).delay(0), value: isMenuVisible)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                    )
                    .font(.custom("PlayfairDisplay-Regular", size: 20))
                    .padding()
                    .frame(width: UIScreen.main.bounds.width*0.9)
                    .background(
                        Color(red: 160/255, green: 47/255, blue: 37/255, opacity: 0.92)
                    )
                    .cornerRadius(30)
                    .offset(x: aboutUsVisible ? 0 : -200, y: aboutUsVisible ? 0 : 200)
                    .opacity(aboutUsVisible ? 1 : 0)
                    .animation(.spring(response: 0.5, dampingFraction: 0.6).delay(0), value: aboutUsVisible)
                }
                
                // Bouton pour afficher/masquer le menu
                VStack {
                    Spacer()
                    HStack(spacing: 15) { // Espacement fixe entre les boutons
                        Button(action: {
                            aboutUsVisible.toggle()
                        }) {
                            Image(systemName: "questionmark")
                                .foregroundColor(.black)
                                .font(.system(size: 30))
                                .frame(width: 50, height: 50) // Taille fixe
                                .padding(10)                                             .background(Color(red: 160/255, green: 47/255, blue: 37/255, opacity: 0.7))
                                .clipShape(Circle())
                        }
                        
                        Button(action: {
                            isMenuVisible.toggle()
                        }) {
                            Image(systemName: isMenuVisible ? "xmark" : "line.3.horizontal")
                                .foregroundColor(.black)
                                .font(.system(size: 30))
                                .frame(width: 50, height: 50) // Taille fixe
                                .padding(10)
                                .background(Color(red: 160/255, green: 47/255, blue: 37/255, opacity: 0.7))
                                .clipShape(Circle())
                        }
                    }
                    .padding(.trailing, 20)
                    .padding(.bottom, 20)
                }
            }
            .onAppear {
                // Déclencher les animations au démarrage
                withAnimation {
                    if (!isMenuVisible) {isMenuVisible.toggle()}
                    //aboutUsVisible.toggle()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
