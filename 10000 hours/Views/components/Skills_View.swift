import SwiftUI

struct Skills_View: View {
    @State private var progress = 0.5
    var body: some View {
        ZStack {
            VStack {
                VStack(alignment: .leading) {
                    Text("3/ 10")
                    ProgressView(value: progress) // would make a custom progress view
                }
                .padding()
                .frame(maxWidth: .infinity)
                .overlay{
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.black, lineWidth: 5)
                }
                Text("I am buidind this skill because...")
                Text("Logs")
                Text("Practice play button")
            }
            .padding()
        }
    }
}

#Preview {
    Skills_View()
}
