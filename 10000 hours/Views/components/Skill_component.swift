import SwiftUI

struct Skill_component: View {
    var progress: CGFloat = 0.6
    var body: some View {
        HStack{
            VStack {
                Text("Drawing")
                    .font(Font.largeTitle.bold())
            }
            .padding(30)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(in: RoundedRectangle(cornerRadius: 20))
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.black, lineWidth: 5)
            )
            .overlay(alignment: .bottomTrailing){
                Text("3 Hrs/ 10,000 Hrs")
                    .padding(.bottom)
                    .padding(.trailing)
            }
            // another overlay for progress color
    }
}

#Preview {
    Skill_component()
        .padding()
}
