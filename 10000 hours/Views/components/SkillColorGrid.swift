//
//  SkillColorGrid.swift
//  10000 hours
//
//  Created by Abdul-Qayyum Olatunji on 2026-02-12.
//

import SwiftUI

struct ColorChoice: Identifiable,  Equatable{
    let id = UUID()
    let color: Color
}

struct SkillColorGrid: View {
    @Binding var selectedColor: Color
    private let choices: [ColorChoice] = [
        .init(color: .red), .init(color: .orange), .init(color: .yellow),
        .init(color: .green), .init(color: .mint), .init(color: .teal),
        .init(color: .blue), .init(color: .indigo), .init(color: .purple),
        .init(color: .pink), .init(color: .brown), .init(color: .gray)
    ]
    
    // 4 columns
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 12){
            ForEach(choices) { choice in
                let isSelected = choice.color.description == selectedColor.description
                RoundedRectangle(cornerRadius: 20)
                    .fill(choice.color)
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(isSelected ? Color.primary : Color.clear, lineWidth: 5)
                    }
                    .frame(width: 80, height: 80)
                    .onTapGesture {
                        selectedColor = choice.color
                    }
            }
        }
    }
}

#Preview {
    @Previewable @State  var color: Color = .red
    SkillColorGrid(selectedColor: $color)
        .padding()
}
