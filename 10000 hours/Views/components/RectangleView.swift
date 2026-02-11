//
//  RectangleView.swift
//  10000 hours
//
//  Created by Abdul-Qayyum Olatunji on 2026-02-08.
//

import SwiftUI

struct RectangleView<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        HStack {
            content
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
        )
        .clipShape(RoundedRectangle(cornerRadius: 20) )
        .shadow(color: .black.opacity(0.3), radius: 1, x: 5, y: 5)
    }
}

#Preview {
    ZStack {
        Color.gray
            .ignoresSafeArea()
        VStack {
            RectangleView {
                Text("Hello")
                    .padding()
                    .background(.blue.opacity(0.2))
                Spacer()
                Text("Helloww")
            }
        }
        .padding()
    }
}
