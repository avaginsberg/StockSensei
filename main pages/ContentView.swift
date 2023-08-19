import SwiftUI
import CoreData

struct ContentView: View {
    @State var name: String
    @State var OwnAmzn = false
    @State var selection: String
    @State private var isOwnAmzn: Bool = false
    @State var numselection: Double = 100000
    @Binding var coinAmount: Double
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.827, green: 0.827, blue: 0.827).edgesIgnoringSafeArea(.all) // Blue background covering the entire screen
                
                VStack {
                    Text("Welcome to StockSensei")
                        .font(.largeTitle)
                    Image("stocks")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    HStack {
                        NavigationLink(destination: login(name: $name, selection: $selection, numselection: $numselection)) {
                            Text("Login")
                                .foregroundColor(Color.black)
                                .frame(width: 80, height: 80)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        NavigationLink(destination: learn()) {
                            Text("Learn")
                        }
                        NavigationLink(destination: Funds(name: $name, selection: $selection, numselection: $numselection)) {
                            Text("Funds")
                        }
                        NavigationLink(destination: Invest(ownAmzn: $isOwnAmzn, coinAmount: $coinAmount)) {
                            Text("Invest")
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("🏠")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(name: "John Doe", selection: "N/A", numselection: 100000.0, coinAmount: .constant(0.0))
    }
}

