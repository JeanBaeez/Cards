//
//  CardView.swift
//  Cards
//
//  Created by Jean Luis Baez on 4/9/21.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - Properties
    var gardient: [Color] = [Color("Color01"), Color("Color02")]
    var card: Card
    var cards: [Card] = cardData
    
    
    
    // MARK: - Card
    
    
    var body: some View {
        ZStack{
            Image(card.imageName)
            
            ZStack{
                Text(card.headline)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .font(.largeTitle)
                    
            }
            .offset(y:-218)
            
            
            HStack {
                Button(action: {print(card.message)}, label: {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .accentColor(Color.white)
                    Image(systemName: "arrow.right.circle")
                        .foregroundColor(Color.white)
                        .font(Font.title.weight(.medium))
                })
                .padding(.vertical)
                .padding(.horizontal,24)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"),radius: 6,x: 0,y: 3)
                .offset(y:210)
            }
        }
        
       
                .frame(width:335, height: 545)
                .background(LinearGradient(gradient: Gradient(colors: gardient), startPoint: .top, endPoint: .bottom))
                .cornerRadius(16)
                .shadow(radius: 8)
    }
    
  
}
// MARK: - Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[0])
            .previewLayout(.sizeThatFits)
    }
}
