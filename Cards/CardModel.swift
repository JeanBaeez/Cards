//
//  CardModel.swift
//  Cards
//
//  Created by Jean Luis Baez on 4/9/21.
//

import Foundation
import UIKit
import SwiftUI

//MARK: - Card Model


struct Card: Identifiable {
    
    var id = UUID()
    var title: String
    var headline: String
    var imageName: String
    var callToAction: String
    var message: String
    var gradientColors: [Color]
    
}
