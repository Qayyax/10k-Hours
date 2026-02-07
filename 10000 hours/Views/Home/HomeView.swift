import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                // the navigation title part
                HStack {
                    Text("Home")
                    Spacer()
                    // this would turn to a timer component
                    Text("Timer")
                }
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
        }
    }
}

#Preview {
    HomeView()
}
