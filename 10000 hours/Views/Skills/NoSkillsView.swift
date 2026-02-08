//
//  NoSkillsView.swift
//  10000 hours
//
//  Created by Abdul-Qayyum Olatunji on 2026-02-08.
//

import SwiftUI

struct NoSkillsView: View {
    var body: some View {
        ZStack {
            VStack{
                Image(systemName: "plus")
                    .font(.system(size: 70))
                    .foregroundStyle(.gray)
                    .padding(.bottom, 40)
                VStack (spacing: 20) {
                    Text("No Skills Yet")
                        .font(.title.bold())
                    Text("Add your first skill to get started on your journey to mastery.")
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.gray)
                }
                .padding(.bottom, 40)
                PrimaryBtn(title: "Add Skill", action: {print("Add skill--")})
            }
            .padding()
        }
    }
}

#Preview {
    NoSkillsView()
}
