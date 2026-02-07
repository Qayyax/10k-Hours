import SwiftUI

struct Skill_component: View {
    // TODO:
    // - [] variable progress based on how many hours completed
    // - [] background color for user skill
    // - [] Skill name
    var progress: CGFloat = 0.9
    var body: some View {
        HStack{
            VStack {
                Text("Drawing")
                    .font(Font.largeTitle.bold())
            }
            .padding(30)
            Spacer()
        }
        .background{
            GeometryReader { proxy in
                let clamped = max(0, min(progress, 1))   // ensure 0...1
                let width = proxy.size.width * clamped
                
                Color.blue
                    .frame(width: width)                          // progress width
                    .frame(maxHeight: .infinity, alignment: .leading)
                    .mask(RoundedRectangle(cornerRadius: 20))     // confine to rounded shape
            }
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
    }
}

#Preview {
    Skill_component()
        .padding()
}
