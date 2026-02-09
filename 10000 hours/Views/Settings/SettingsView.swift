//
//  SettingsView.swift
//  10000 hours
//
//  Created by Abdul-Qayyum Olatunji on 2026-02-08.
//

import SwiftUI

struct SettingsView: View {
    @State private var isPracticeReminder: Bool = true
    @State private var isSoundEffect: Bool = true
    var body: some View {
        ZStack {
            Color.gray.opacity(0.1)
                .ignoresSafeArea()
            VStack {
                RectangleView {
                    IconView()
                    Spacer()
                    Toggle(isOn: $isPracticeReminder) {
                        SettingsText("Practice Reminders", "Get Daily Notifications")
                    }
                    .tint(.purple)
                    .padding(.leading, 10)
                }
                RectangleView {
                    IconView(imageName: "clock")
                    Spacer()
                    Toggle(isOn: $isPracticeReminder) {
                        SettingsText("Default Session", "Suggested duration")
                    }
                    .tint(.purple)
                    .padding(.leading, 10)
                }
                RectangleView {
                    IconView(imageName: "speaker")
                    Spacer()
                    Toggle(isOn: $isSoundEffect) {
                        SettingsText("Sound Effects", "Timer sounds and alerts")
                    }
                    .tint(.purple)
                    .padding(.leading, 10)
                }
                RectangleView {
                    IconView()
                    Spacer()
                    Toggle(isOn: $isPracticeReminder) {
                        SettingsText("Practice Reminders", "Get Daily Notifications")
                    }
                    .tint(.purple)
                    .padding(.leading, 10)
                }
            }
            .padding()
        }
    }
}

#Preview {
    SettingsView()
}
