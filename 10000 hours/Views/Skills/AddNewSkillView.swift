//
//  AddNewSkillView.swift
//  10000 hours
//
//  Created by Abdul-Qayyum Olatunji on 2026-02-12.
//

import SwiftUI

struct AddNewSkillView: View {
    var body: some View {
        ZStack {
            Color.gray
                .opacity(0.3)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    RectangleView{
                        VStack {
                            HStack(spacing: 20){
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(.blue)
                                    .frame(width: 80, height: 80)
                                // Name and contecxt textfield here
                                VStack(alignment: .leading) {
                                    Text("Skill Name")
                                        .font(.title.bold())
                                    Text("Why do you want to learn this?")
                                        .foregroundStyle(.gray)
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
                }
                .padding()
            }
        }
    }
}

#Preview {
    AddNewSkillView()
}
