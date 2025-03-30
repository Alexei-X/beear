import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // 170,241,180
                Color(red: 85/255, green: 139/255, blue: 127/255)
                    .ignoresSafeArea()
                
                VStack {
                    VStack {
                        Text("Be Ear")
                            .font(.custom("PlayfairDisplay-Bold", fixedSize: 60))
                            .fontWeight(.heavy)
                        // Color(red: 160/255, green: 47/255, blue: 37/255, opacity: 1)
                            .foregroundColor(Color.black)
                            .padding()
                        Spacer()
                        Spacer()
                        Spacer()
                        NavigationLink(destination: ChordRecognitionView()) {
                            Text("Accords")
                                .padding()
                                .foregroundColor(.white)
                                .font(.custom("PlayfairDisplay-Regular", fixedSize: 15))
                                .frame(minWidth: 100)
                                .background(Color(red: 160/255, green: 47/255, blue: 37/255, opacity: 1))
                                .cornerRadius(15)
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                        
                        NavigationLink(destination: NoteRecognitionView()) {
                            Text("Notes")
                                .padding()
                                .foregroundColor(.white)
                                .font(.custom("PlayfairDisplay-Regular", fixedSize: 15))
                                .frame(minWidth: 100)
                                .background(Color(red: 160/255, green: 47/255, blue: 37/255, opacity: 1))
                                .cornerRadius(15)
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                        
                        NavigationLink(destination: ProgressionSystemView()) {
                            Text("Progression")
                                .padding()
                                .foregroundColor(.white)
                                .font(.custom("PlayfairDisplay-Regular", fixedSize: 15))
                                .frame(minWidth: 100)
                                .background(Color(red: 160/255, green: 47/255, blue: 37/255, opacity: 1))
                                .cornerRadius(15)
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                        Image("polar-bear")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width * 0.95, height: UIScreen.main.bounds.height / 2 * 0.95)
                            .padding()
                            .opacity(0.7)
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
