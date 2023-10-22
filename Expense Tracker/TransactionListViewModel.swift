//
//  TransactionListViewModel.swift
//  Expense Tracker
//
//  Created by Anton Rasen on 19.10.2023.
//

import Foundation
import Combine

typealias TransactionCroup = [String: [Transaction]]

final class TransactionListViewModel: ObservableObject {
    @Published var transactions: [Transaction] = []
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        getTransactions()
    }
    
    func getTransactions() {
        guard let url = URL(string: "https://designcode.io/data/transactions.json") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .tryMap { (data, response) -> Data in
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                    dump(response)
                    throw URLError(.badServerResponse)
                }
                return data
            }
            .decode(type: [Transaction].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print("Error fetching transactions: ", error.localizedDescription)
                    
                case .finished:
                    print("Finishded fetching transactions")
                }
            } receiveValue: {[weak self] results in
                self?.transactions = results
                
            }
            .store(in: &cancellables)
    }
}
