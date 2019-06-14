//
//  ContentView.swift
//  CardTest
//
//  Created by Openfield Mobility on 14/06/2019.
//  Copyright © 2019 Openfield. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var model: Model
    let buttonWidth: CGFloat
    
    var body: some View {
        VStack {
            VStack {
                self.model.image
                    .frame(width: 10)
                
                VStack(alignment: .leading, spacing: nil) {
                    Text(self.model.title)
                        .font(.title)
                    Text(self.model.subtitle)
                        .font(.subheadline)
                    
                    HStack {
                        Text(self.model.land)
                            .font(.footnote)
                        Spacer()
                        Text(self.model.priceRange)
                            .font(.footnote)
                    }
                    
                    HStack(spacing: 0) {
                        // Buttons
                        Button(action: {
                            print("Ok")
                        }) {
                            Text("OK")
                                .color(Color.white)
                        }
                        .frame(width: self.buttonWidth - 1, height: 35)
                        .background(Color.green)
                        
                        Button(action: {
                            print("Toto")
                        }) {
                            Text("")
                        }
                        .frame(width: 2, height: 35, alignment: .center)
                        .background(Color.black)
                        
                        Button(action: {
                            print("Cancel")
                        }) {
                            Text("Cancel")
                                .color(Color.white)
                        }
                        .frame(width: self.buttonWidth - 1, height: 35)
                        .background(Color.red)
                    }
                    .padding(.init(arrayLiteral: .bottom, .trailing, .leading), -10)
                }
                .padding(.init(arrayLiteral: .bottom, .leading, .trailing), 10)
            }
        }
        .background(Color.white)
        .cornerRadius(5)
        .shadow(radius: 10)
        .padding(.init(arrayLiteral: .bottom, .leading, .trailing), 10)
    }
}

struct Model {
    var id = 0
    var title = "Cowbow Cookout"
    var subtitle = "Disneyland Park"
    var land = "FrontierLand"
    var priceRange = "€€"
    var image = Image(uiImage: UIImage(named: "cowboy-cookout")!)
}
