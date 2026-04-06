//
//  DetailView.swift
//  FirstIOSApp
//
//  Created by OMKAR on 31/03/26.
//

import SwiftUI

struct DetailView: View {
    
    var quote: String
    
    var body: some View {
        VStack(spacing: 20) {
            
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
            
            Text(quote)
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
        }
        .navigationTitle("Quote Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}
