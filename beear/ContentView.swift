import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // 170,241,180
                Color(red: 85/255, green: 139/255, blue: 127/255)
                    .ignoresSafeArea()
                
                ZStack {
                    Image("backbear")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.95, height: UIScreen.main.bounds.height / 2 * 0.95)
                        .padding(.top, UIScreen.main.bounds.height / 3)
                        .opacity(0.7)
                    VStack {
                        Text("Be Ear")
                            .font(.custom("lucidabright_demi", fixedSize: 60))
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 160/255, green: 47/255, blue: 37/255, opacity: 1))
                            .padding()
                        Spacer()
                        NavigationLink(destination: ChordRecognitionView()) {
                            Text("Accords")
                                .padding()
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
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
                                .fontWeight(.semibold)
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
                                .fontWeight(.semibold)
                                .frame(minWidth: 100)
                                .background(Color(red: 160/255, green: 47/255, blue: 37/255, opacity: 1))
                                .cornerRadius(15)
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                        Spacer()
                        Spacer()
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
