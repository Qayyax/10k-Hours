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
    @State private var targetHours: Float = 10_000
    @State  var selectedColor: Color = .purple
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
                                    .fill(selectedColor)
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
                            Text("Target: \(targetHours, format: .number.precision(.fractionLength(2))) hours")
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
                            
                            // Reason for the skill
                            Text("WHY THIS SKILL?")
                            TextField("What motivates your to master this skill?", text: $reasonForLearning, axis: .vertical)
                                .frame(height: 100, alignment: .top)
                            
                            Divider()
                            
                            // Target hours for the skill
                            Text("TARGET HOURS")
                                // input for number, stepper
                            
                            VStack(alignment: .leading) {
                                Text("\(targetHours, format: .number.precision(.fractionLength(2))) hours")

                                Slider(value: $targetHours, in: 0...10000, step: 5)
                            }
                        }
                    }
                    Text("The 10,000-hour rule suggests this is the path to mastery")
                        .foregroundStyle(.gray)
                    
                    VStack(alignment: .leading) {
                        Text("CHOOSE A COLOR")
                            .foregroundStyle(.gray)
                            .bold()
                        RectangleView{
                            SkillColorGrid(selectedColor: $selectedColor)
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
