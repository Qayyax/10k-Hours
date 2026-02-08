//
//  LogsView.swift
//  10000 hours
//
//  Created by Abdul-Qayyum Olatunji on 2026-02-08.
//

import SwiftUI

struct LogsView: View {
    @State private var isLogsEmpty: Bool = true
    var body: some View {
        ZStack {
            VStack {
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Text("Total Practice Days")
                    }
                    HStack {
                        Text("0")
                    }
                    HStack {
                        Text("0h 0m total")
                    }
                }
                .foregroundStyle(.white)
                .padding(20)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.purple)
                }
                Spacer()
            }
            if isLogsEmpty {
                NoLogsView()
                    .frame(maxHeight: .infinity)
            }
        }
        .padding()
    }
}

#Preview {
    LogsView()
}
