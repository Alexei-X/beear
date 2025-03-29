import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Spacer()
                Text("Be Ear")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color(red: 0.2, green: 0.7, blue: 0.5, opacity: 1.0))
                    .padding()
                Spacer()
                NavigationLink(destination: PracticeView()) {
                    Text("Practice")
                        .frame(minWidth: 0, maxWidth: UIScreen.main.bounds.size.width / 3)
                        .font(.system(size: 20))
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(red: 0.2, green: 0.7, blue: 0.5, opacity: 0.5))
                        .cornerRadius(25)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.clear, lineWidth: 2)
                        )
                }
                .accessibilityAddTraits([.isButton])
                .accessibilityIdentifier("PracticeButton")
                NavigationLink(destination: LearnView()) {
                    Text("Learn")
                        .frame(minWidth: 0, maxWidth: UIScreen.main.bounds.size.width / 3)
                        .font(.system(size: 20))
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(red: 0.2, green: 0.7, blue: 0.5, opacity: 0.5))
                        .cornerRadius(25)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.clear, lineWidth: 2)
                        )
                }
                .accessibilityAddTraits([.isButton])
                .accessibilityIdentifier("LearnButton")
                Spacer()
                Spacer()
                Spacer()
            }
            .padding(.top, -(UIScreen.main.bounds.size.height / 4))
        }
    }
}

#Preview {
    ContentView()
}
