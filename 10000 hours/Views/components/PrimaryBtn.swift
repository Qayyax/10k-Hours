//
//  PrimaryBtn.swift
//  10000 hours
//
//  Created by Abdul-Qayyum Olatunji on 2026-02-08.
//

import SwiftUI

struct PrimaryBtn: View {
    var title: String
    var frame: CGFloat?
    var action: () -> Void = { }
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title2.bold())
                .foregroundStyle(.white)
        }
        .padding()
        .frame(maxWidth: frame)
        .background {
            RoundedRectangle(cornerRadius: 20)
                .fill(.purple)
        }
    }
}

#Preview {
    PrimaryBtn(title: "Add your first skill", action: {print("dd")})
}
