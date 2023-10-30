//
//  SearchBarView.swift
//  SwiftUI-Crypto
//
//  Created by Okan Orkun on 29.10.2023.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(
                    searchText.isEmpty ? Color.theme.secondaryText : Color.theme.accent
                )
            
            TextField("Search by name or symbol...", text: $searchText)
                .foregroundStyle(Color.theme.accent)
                .autocorrectionDisabled()
                .overlay(
                    Image(systemName: "xmark.circle.fill")
                        .padding()
                        .offset(x: 10)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .foregroundStyle(Color.theme.accent)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            searchText = ""
                        }
                    ,
                    alignment: .trailing
                    
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.theme.background)
                .shadow(color: Color.theme.accent.opacity(0.15), radius: 10)
        )
    }
}

struct SearchBarView_Preview: PreviewProvider {
    static var previews: some View {
        
        Group {
            SearchBarView(searchText: .constant(""))
                .padding()
                .previewLayout(.sizeThatFits)
            
            SearchBarView(searchText: .constant(""))
                .padding()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
        
    }
}
