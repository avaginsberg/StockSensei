import SwiftUI
import UIKit
struct ToolbarView: View {
    var body: some View {
        HStack {
            Spacer()
            
            ToolbarButton(title: "Home") {
                // Handle Home button tap
            }
            
            Spacer()
            
            ToolbarButton(title: "Login") {
                // Handle Login button tap
            }
            
            Spacer()
            
            ToolbarButton(title: "Funds") {
                // Handle Funds button tap
            }
            
            Spacer()
            
            ToolbarButton(title: "Invest") {
                // Handle Invest button tap
            }
            
            Spacer()
        }
        .frame(height: 44)
        .background(Color.white) // Adjust the background color as needed
    }
}

struct ToolbarButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.blue) // Customize text color
        }
    }
}

struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarView()
    }
}

