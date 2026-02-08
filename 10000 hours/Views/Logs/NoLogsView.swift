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
                .font(.system(size: 70))
                .foregroundStyle(.gray)

            VStack(spacing: 20) {
                Text("No Logs Yet")
                    .font(.title.bold())
                
                Text("Start a timer to create your first practice entry!")
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    NoLogsView()
}
