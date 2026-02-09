//
//  SettingsText.swift
//  10000 hours
//
//  Created by Abdul-Qayyum Olatunji on 2026-02-08.
//

import SwiftUI

struct SettingsText: View {
    var title: String
    var subtitle: String
    init(_ title: String, _ subtitle: String) {
        self.title = title
        self.subtitle = subtitle
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text(title)
                .font(.title2.bold())
            Text(subtitle)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    SettingsText("proacting", "sheesh")
}
