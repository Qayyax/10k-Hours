//
//  SecondaryBtn.swift
//  10000 hours
//
//  Created by Abdul-Qayyum Olatunji on 2026-02-10.
//

import SwiftUI

struct SecondaryBtn: View {
    var text: String
    var isPressed: Bool = true
    init(text: String, isPressed:Bool) {
        self.text = text
        self.isPressed = isPressed
    }
    var body: some View {
        HStack {
            // text in the center
            Text(text)
                .font(.title3.bold())
                .foregroundStyle(isPressed ? .white : .black)
                .padding(.vertical,20)
                .frame(maxWidth: .infinity)
                .background {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(isPressed ? Color.purple : Color.gray.opacity(0.2))
                }
            // color of text change based on state
        }
    }
}

#Preview {
    SecondaryBtn(text: "primary", isPressed: true)
}
