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
    
    enum SessionTime: String, CaseIterable, Identifiable {
        case m30 = "30m"
        case m45 = "45m"
        case m60 = "60m"
        case m90 = "90m"
        var id: Self { self }
    }
    
    @State private var sessionTime: SessionTime = .m30
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.1)
                .ignoresSafeArea()
            VStack(spacing: 20) {
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
                    VStack {
                        HStack {
                            IconView(imageName: "clock")
                            SettingsText("Default Session", "Suggested duration")
                                .padding(.leading, 10)
                            Spacer()
                        }
                        HStack {
                            ForEach(SessionTime.allCases, id: \.self) { session in
                                let isSelected: Bool = (session == sessionTime)
                                Button(action: { sessionTime = session }) {
                                    SecondaryBtn(text: session.rawValue, isPressed: isSelected)
                                }
                            }
                        }
                    }
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
                    VStack {
                        HStack {
                            IconView(imageName: "paintpalette")
                            SettingsText("Appearance", "Choose your theme")
                            .padding(.leading, 10)
                            Spacer()
                        }
                        // enum of light and dark
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    SettingsView()
}
