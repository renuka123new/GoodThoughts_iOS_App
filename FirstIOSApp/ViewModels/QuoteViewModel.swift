//
//  QuoteViewModel.swift
//  FirstIOSApp
//
//  Created by OMKAR on 31/03/26.
//

import Foundation

class QuoteViewModel: ObservableObject {
    
    @Published var quotes: [QuoteModel] = [
        QuoteModel(text: "I hope your day is as awesome as you are!"),
        QuoteModel(text: "Believe in yourself and all that you are."),
        QuoteModel(text: "Every day is a fresh start."),
        QuoteModel(text: "Stay positive, work hard, make it happen."),
        QuoteModel(text: "Dream big and dare to fail.")
    ]
    
    @Published var currentIndex: Int = 0
    
    func changeQuote() {
        currentIndex = Int.random(in: 0..<quotes.count)
    }
    
    var currentQuote: String {
        quotes[currentIndex].text
    }
}
