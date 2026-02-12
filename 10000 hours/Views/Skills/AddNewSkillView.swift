//
//  AddNewSkillView.swift
//  10000 hours
//
//  Created by Abdul-Qayyum Olatunji on 2026-02-12.
//

import SwiftUI

struct AddNewSkillView: View {
    @State private var skillName: String = ""
    @State private var reasonForLearning: String = ""
    var body: some View {
        ZStack {
            Color.gray
                .opacity(0.3)
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 30) {
                    RectangleView{
                        VStack {
                            HStack(spacing: 20){
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.blue)
                                    .frame(width: 80, height: 80)
                                // Name and contecxt textfield here
                                // The text would change based on state
                                VStack(alignment: .leading) {
                                    Text(skillName.isEmpty ? "Skill Name" : skillName)
                                        .font(.title.bold())
                                    Text(reasonForLearning.isEmpty ? "Why do you want to learn this?" : reasonForLearning)
                                        .foregroundStyle(.gray)
                                        .lineLimit(3)
                                        .truncationMode(.tail)
                                }
                                Spacer()
                            }
                            Divider()
                            Text("Target: 10000 hours")
                                .foregroundStyle(.gray)
                                .padding(.top)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                    RectangleView{
                        VStack (alignment: .leading, spacing: 20){
                            // Skill name
                            Text("SKILL NAME")
                            TextField("e.g., Drawing, Piano, Programming", text: $skillName)
                                
                            Divider()
                            
                            Text("WHY THIS SKILL?")
                            TextField("What motivates your to master this skill?", text: $reasonForLearning, axis: .vertical)
                                .frame(height: 100, alignment: .top)
                                

                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    AddNewSkillView()
}
