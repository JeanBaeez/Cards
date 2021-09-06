//
//  ContentView.swift
//  Cards
//
//  Created by Jean Luis Baez on 4/9/21.
//

import SwiftUI
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

struct ContentView: View {
  
    //MARK: - PROPERTIES
    
    var cards: [Card] = cardData
    
    
    
    // MARK: - Content
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators:false){
            HStack(alignment: .center, spacing:20) {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            }
            .padding(40)
        
        }
       
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
    }
}
