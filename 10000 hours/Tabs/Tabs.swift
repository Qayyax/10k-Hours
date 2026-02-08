//
//  Tabs.swift
//  10000 hours
//
//  Created by Abdul-Qayyum Olatunji on 2026-02-07.
//

import SwiftUI

struct Tabs: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                HomeView()
            }
            Tab("Skills", systemImage: "list.bullet") {
                Skills_View()
            }
            Tab("Logs", systemImage: "book.pages") {
                LogsView()
            }
            Tab("Settings", systemImage: "gear") {
                Text("Settings page")
            }
        }
    }
}

#Preview {
    Tabs()
}
