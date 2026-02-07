import SwiftUI

struct Skill_component: View {
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
        .background(.blue)// would change this to overlay of progress
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay(alignment: .bottomTrailing){
            Text("3 hrs left")
                .padding(.bottom)
                .padding(.trailing)
        }
        // another overlay for color
    }
}

#Preview {
    Skill_component()
        .padding()
}
