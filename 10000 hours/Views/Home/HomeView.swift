import SwiftUI

struct HomeView: View {
    @State var noSkill = true
    var body: some View {
        if noSkill {
            NoSkillView()
        }
    }
}

#Preview {
    HomeView()
}
