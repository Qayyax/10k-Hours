//
//  IconView.swift
//  10000 hours
//
//  Created by Abdul-Qayyum Olatunji on 2026-02-08.
//

import SwiftUI

struct IconView: View {
    var imageName: String = "bell"
    var body: some View {
        Image(systemName: imageName)
            .font(.system(size:40))
            .foregroundStyle(.purple)
            .padding()
            .background{
                RoundedRectangle(cornerRadius: 16)
                    .fill(.purple.opacity(0.1))
            }
    }
}

#Preview {
    IconView()
}
