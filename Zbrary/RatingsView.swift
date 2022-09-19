import SwiftUI
struct RatingsView: View {
    
    @StateObject private var dataController = DataController()
    var body: some View {
        VStack {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
    
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView()
    }
}

