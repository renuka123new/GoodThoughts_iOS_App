//
//  ContentView.swift
//  FirstIOSApp
//
//  Created by RENUKA on 27/03/26.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = QuoteViewModel()
    
    var body: some View {
        
        NavigationStack {
            VStack(spacing: 20) {
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                
                Text("Welcome to our Quote Generator App!")
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Text(viewModel.currentQuote)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Button("Change Quote") {
                    viewModel.changeQuote()
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                NavigationLink(
                    destination: DetailView(
                        quote: viewModel.currentQuote
                    )
                ) {
                    Text("Go to Next Screen")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}
