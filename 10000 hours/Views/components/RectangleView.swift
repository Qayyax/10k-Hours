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
                .fill(.white) // <- Fill style here
        )
        .clipShape(RoundedRectangle(cornerRadius: 20) )
    }
}

#Preview {
    ZStack {
        Color.red
            .ignoresSafeArea()
        RectangleView {
            Text("Hello")
                .padding()
                .background(.blue.opacity(0.2))
            Spacer()
            Text("Helloww")
        }
    }
}
