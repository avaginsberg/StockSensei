import SwiftUI
import CoreData

struct ContentView: View {
    @FetchRequest(
        entity: EnterName.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \EnterName.id, ascending: false) ])
    
    var name: FetchedResults<EnterName>
    @State var ownAmzn = 0
    @State var selection: String
    @State var numselection: Double = 100000
    @State var coinAmount = 0.0
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.827, green: 0.827, blue: 0.827).edgesIgnoringSafeArea(.all) // Blue background covering the entire screen
                
                VStack {
                    Text("StockSensei")
                        .font(Font.custom("Rubik-Regular", size:50))
                        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
                    Image("stocks")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
                    HStack {
                        NavigationLink(destination: login(name: $name, selection: $selection, numselection: $numselection)) {
                            Text("Login")
                                .foregroundColor(Color.black)
                                .frame(width: 80, height: 80)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
                        }
                        NavigationLink(destination: learn()) {
                            Text("Learn").foregroundColor(Color.black)
                                .frame(width: 80, height: 80)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
                        }
                        NavigationLink(destination: Funds(name: $name, selection: $selection, numselection: $numselection, coinAmount: $coinAmount)) {
                            Text("Funds").foregroundColor(Color.black)
                                .frame(width: 80, height: 80)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
                        }
                        NavigationLink(destination: Invest(ownAmzn: $ownAmzn, coinAmount:$coinAmount)) {
                            Text("Invest").foregroundColor(Color.black)
                                .frame(width: 80, height: 80)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 2)
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
    ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(name: "John Doe", ownAmzn:0, selection: "N/A", numselection: 100000.0, coinAmount:0.0)
    }
}

