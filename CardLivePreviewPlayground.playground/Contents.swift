import SwiftUI
import PlaygroundSupport

struct CustomContentView: View {
    var model: Model
    
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
                    
                    HStack {
                        // Buttons
                        Button(action: {
                            print("Ok")
                        }) {
                            Text("OK")
                                .color(Color.white)
                        }
                        .background(Color.green)
                        
                        Spacer()
                        
                        Button(action: {
                            print("Cancel")
                        }) {
                            Text("Cancel")
                                .color(Color.white)
                        }
                        .background(Color.red)
                    }
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
    var image = Image(uiImage: UIImage(named: "cowboy-cookout.jpg")!)
}

PlaygroundPage.current.liveView = UIHostingController(rootView: CustomContentView(model: Model()))

// HStack = Côte à côte
// VStack = L'un au dessus de l'autre
