import SwiftUI

struct NoSkillView: View {
    var body: some View {
        ZStack {
            VStack {
                ZStack(alignment: .center) {
                    Circle()
                        .fill(.purple.opacity(0.4))
                        .frame(width: 150, height: 150)
                    Image(systemName: "play")
                        .font(.system(size: 70, weight: .bold))
                        .foregroundColor(.purple)
                        .scaledToFit()
                }
                VStack(spacing: 20) {
                    Text("Start your journey")
                        .font(.title.bold())
                    Text("Create your first skill tracking your path to 10,000 hours of mystery.")
                        .multilineTextAlignment(.center)
                }
                Button("Add Your first skill") {
                    print("")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(style: StrokeStyle(lineWidth: 5))
                }
                .padding(.top, 40)
            }
        }
        .padding()
    }
}

#Preview {
    NoSkillView()
}
