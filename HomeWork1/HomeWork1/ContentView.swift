

import SwiftUI

struct ContentView: View {
    @State var alpha = 0.0
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text("Albert Ganiev")
                .opacity(alpha)
                .onAppear() {
                    let animation = Animation.easeInOut(duration: 3)
                    withAnimation(animation){
                        alpha = 1.0
                    }
                }
        }
        .padding()
        
        
    }
}

#Preview {
    ContentView()
}
