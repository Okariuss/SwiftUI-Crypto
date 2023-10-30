//
//  HomeViewModel.swift
//  SwiftUI-Crypto
//
//  Created by Okan Orkun on 28.10.2023.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    private var cancellable = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }

    func addSubscribers() {
        
        $searchText
            .combineLatest(dataService.$allCoins)
            .debounce(for: .seconds(0.5), scheduler: DispatchQueue.main)
            .map(filterCoins)
            .sink { [weak self] returnedCoins in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellable)
    }
    
    private func filterCoins(text: String, coins: [CoinModel]) -> [CoinModel] {
        guard !text.isEmpty else {
            return coins
        }
        
        let lowerCaseText = text.lowercased()
        
        return coins.filter { coin -> Bool in
            return coin.name.lowercased().contains(lowerCaseText) ||
                    coin.symbol.lowercased().contains(lowerCaseText) ||
                    coin.id.lowercased().contains(lowerCaseText)
        }
    }
}
