//
//  NoLogsView.swift
//  10000 hours
//
//  Created by Abdul-Qayyum Olatunji on 2026-02-08.
//

import SwiftUI

struct NoLogsView: View {
    var body: some View {
        VStack(spacing: 40) {
            Image(systemName: "calendar")
            
            VStack {
                Text("No Logs Yet")
                Text("Start a timer to create your first practice entry!")
            }
        }
    }
}

#Preview {
    NoLogsView()
}
