//
//  Expense_TrackerApp.swift
//  Expense Tracker
//
//  Created by Anton Rasen on 16.10.2023.
//

import SwiftUI

@main
struct Expense_TrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
