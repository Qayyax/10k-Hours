import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                // Here would be the list of skills components
                VStack {
                    // There should probably be a rate limiting of how many skills
                    // show up here
                    Text("Drawing")
                    Text("Knitting")
                    Text("Cooking")
                }
                // here would be another vStack of logs
                VStack {
                    Text("Logs")
                }
                // Might add music player, don't know what to put at the bottom yet
                Spacer()
            }
            .padding()
            .navigationTitle("Home")
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Text("Timer component")
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
