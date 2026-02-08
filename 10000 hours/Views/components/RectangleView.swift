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
        ZStack {
            content
        }
    }
}

#Preview {
    RectangleView {
        Text("Hello")
            .padding()
            .background(.blue.opacity(0.2))
    }
}
