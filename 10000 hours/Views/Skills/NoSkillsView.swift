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
                VStack (spacing: 20) {
                    Text("No Skills Yet")
                        .font(.title.bold())
                    Text("Add your first skill to get started on your journey to mastery.")
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.gray)
                }
            }
            .padding()
        }
    }
}

#Preview {
    NoSkillsView()
}
