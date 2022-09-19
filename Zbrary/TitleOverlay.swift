import SwiftUI

struct TitleOverlay: View {
    
    
    
    var body: some View {
        
        ZStack {
            Text("Put book title here")
                .font(.title)
                .padding(6)
                .foregroundColor(.white)
        }.background(Color.black)
        .opacity(0.8)
        .cornerRadius(10.0)
        .padding(6)
    }
}
struct TitleOverlay_Previews: PreviewProvider {
    static var previews: some View {
        TitleOverlay()
    }
}


