//
//  ContentView.swift
//  Expense Tracker
//
//  Created by Anton Rasen on 16.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                   // MARK: Title
                    Text("Overview")
                        .font(.title2)
                        .bold()
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            .background(Color.backgoundColor)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                // MARK: Notification Icon
                Image(systemName: "bell.badge")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(Color.iconColor, .primary)
            }
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    ContentView()
}
