//
//  TransactionRow.swift
//  Expense Tracker
//
//  Created by Anton Rasen on 17.10.2023.
//

import SwiftUI

struct TransactionRow: View {
    var transaction: Transaction
        
    var body: some View {
        HStack(spacing: 20) {
            VStack(alignment: .leading, spacing: 6) {
                // MARK: Trnsaction Merchant
                Text(transaction.maerchant)
                    .font(.footnote)
                    .bold()
                    .lineLimit(1)
                
                // MARK: Transaction Catrgory
                Text(transaction.category)
                    .font(.footnote)
                    .opacity(0.7)
                    .lineLimit(1)
                
                // MARK: Transaction Date
                Text(Date(), format: .dateTime.year().month().day())
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
        }
        .padding([.top, .bottom], 8)
    }
}

#Preview {
    TransactionRow(transaction: transactionPreviewData)
}
